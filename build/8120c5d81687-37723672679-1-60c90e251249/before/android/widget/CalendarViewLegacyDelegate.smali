.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;,
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    }
.end annotation


# static fields
.field private static final blacklist ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final blacklist DAYS_PER_WEEK:I = 0x7

.field private static final blacklist DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final blacklist DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final blacklist DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final blacklist DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final blacklist GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final blacklist MILLIS_IN_DAY:J = 0x5265c00L

.field private static final blacklist MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final blacklist SCROLL_CHANGE_DELAY:I = 0x28

.field private static final blacklist SCROLL_HYST_WEEKS:I = 0x2

.field private static final blacklist UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final blacklist UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final blacklist UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final blacklist UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final blacklist UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private blacklist mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private blacklist mBottomBuffer:I

.field private blacklist mCurrentMonthDisplayed:I

.field private blacklist mCurrentScrollState:I

.field private blacklist mDateTextAppearanceResId:I

.field private blacklist mDateTextSize:I

.field private blacklist mDayNamesHeader:Landroid/view/ViewGroup;

.field private blacklist mDayNamesLong:[Ljava/lang/String;

.field private blacklist mDayNamesShort:[Ljava/lang/String;

.field private blacklist mDaysPerWeek:I

.field private blacklist mFirstDayOfMonth:Landroid/icu/util/Calendar;

.field private blacklist mFirstDayOfWeek:I

.field private blacklist mFocusedMonthDateColor:I

.field private blacklist mFriction:F

.field private blacklist mIsScrollingUp:Z

.field private blacklist mListScrollTopOffset:I

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private blacklist mMinDate:Landroid/icu/util/Calendar;

.field private blacklist mMonthName:Landroid/widget/TextView;

.field private blacklist mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private blacklist mPreviousScrollPosition:J

.field private blacklist mPreviousScrollState:I

.field private blacklist mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private blacklist mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final blacklist mSelectedDateVerticalBarWidth:I

.field private blacklist mSelectedWeekBackgroundColor:I

.field private blacklist mShowWeekNumber:Z

.field private blacklist mShownWeekCount:I

.field private blacklist mTempDate:Landroid/icu/util/Calendar;

.field private blacklist mUnfocusedMonthDateColor:I

.field private blacklist mVelocityScale:F

.field private blacklist mWeekDayTextAppearanceResId:I

.field private blacklist mWeekMinVisibleHeight:I

.field private blacklist mWeekNumberColor:I

.field private blacklist mWeekSeparatorLineColor:I

.field private final blacklist mWeekSeparatorLineWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDateTextSize(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstDayOfWeek(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsScrollingUp(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListScrollTopOffset(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDateChangeListener(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousScrollState(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedDateVerticalBar(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedDateVerticalBarWidth(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedWeekBackgroundColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShownWeekCount(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekNumberColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekSeparatorLineColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekSeparatorLineWidth(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentScrollState(Landroid/widget/CalendarViewLegacyDelegate;I)V
    .registers 2

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousScrollState(Landroid/widget/CalendarViewLegacyDelegate;I)V
    .registers 2

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWeeksSinceMinDate(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monScroll(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monScrollStateChanged(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMonthDisplayed(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    .line 258
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 129
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 134
    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 139
    const/16 v1, 0x14

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 154
    const/4 v1, 0x7

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    .line 159
    const v2, 0x3d4ccccd    # 0.05f

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    .line 164
    const v2, 0x3eaa7efa    # 0.333f

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    .line 204
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 214
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 219
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 224
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    .line 234
    new-instance v4, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate-IA;)V

    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    .line 260
    sget-object v4, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p2, p3, v4, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 262
    const/4 p3, 0x1

    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 264
    nop

    .line 265
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result p4

    .line 264
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 266
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 268
    const-string p1, "01/01/1900"

    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 270
    :cond_5c
    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 272
    const-string p1, "01/01/2100"

    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 274
    :cond_70
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p4}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_171

    .line 277
    const/4 p1, 0x4

    const/4 p4, 0x6

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 279
    const/4 p1, 0x5

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 281
    invoke-virtual {p2, p4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 283
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 285
    const/16 p1, 0x9

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 287
    const/16 p1, 0x8

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 288
    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 291
    const p1, 0x1030046

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 293
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 295
    const/16 p1, 0xb

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 298
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 301
    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 303
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 305
    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 307
    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    .line 309
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    .line 312
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    .line 313
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 314
    const p2, 0x109004f

    invoke-virtual {p1, p2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 315
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {p2, p1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 317
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const p4, 0x102000a

    invoke-virtual {p2, p4}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 318
    const p2, 0x10202c7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 319
    const p2, 0x102040f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    .line 321
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 322
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    .line 323
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    .line 326
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p1, p4, p5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 327
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_156

    .line 328
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1, v3, p3, p3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_16b

    .line 329
    :cond_156
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_166

    .line 330
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1, v3, p3, p3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_16b

    .line 332
    :cond_166
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1, v3, p3, p3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 335
    :goto_16b
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {p1}, Landroid/widget/CalendarView;->invalidate()V

    .line 336
    return-void

    .line 275
    :cond_171
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max date cannot be before min date."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .registers 4

    .line 671
    if-nez p0, :cond_7

    .line 672
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0

    .line 674
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 675
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p0

    .line 676
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 677
    return-object p0
.end method

.method private blacklist getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I
    .registers 10

    .line 946
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 950
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 951
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 952
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 953
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p1

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 954
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int/2addr p1, v4

    int-to-long v4, p1

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    .line 956
    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    .line 947
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not precede toDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 948
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist goTo(Landroid/icu/util/Calendar;ZZZ)V
    .registers 11

    .line 795
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 800
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 801
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 802
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_27

    .line 803
    add-int/lit8 v0, v0, 0x1

    .line 805
    :cond_27
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 806
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    if-le v1, v5, :cond_38

    .line 807
    add-int/lit8 v3, v3, -0x1

    .line 809
    :cond_38
    if-eqz p3, :cond_3f

    .line 810
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 813
    :cond_3f
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v1

    .line 817
    if-lt v1, v0, :cond_50

    if-gt v1, v3, :cond_50

    if-eqz p4, :cond_4a

    goto :goto_50

    .line 840
    :cond_4a
    if-eqz p3, :cond_91

    .line 842
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    goto :goto_91

    .line 819
    :cond_50
    :goto_50
    iget-object p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 820
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 822
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 825
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    iget-object p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p3}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 826
    move p1, v2

    goto :goto_76

    .line 828
    :cond_70
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result p1

    .line 831
    :goto_76
    const/4 p3, 0x2

    iput p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 832
    if-eqz p2, :cond_85

    .line 833
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 p4, 0x3e8

    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_91

    .line 836
    :cond_85
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    invoke-virtual {p2, p1, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 838
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 844
    :cond_91
    :goto_91
    return-void

    .line 796
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeInMillis must be between the values of getMinDate() and getMaxDate()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist invalidateAllWeekViews()V
    .registers 4

    .line 657
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 658
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 659
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 660
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 662
    :cond_15
    return-void
.end method

.method private static blacklist isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 4

    .line 686
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_17

    .line 687
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 686
    :goto_18
    return v0
.end method

.method private blacklist onScroll(Landroid/widget/AbsListView;III)V
    .registers 10

    .line 860
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 861
    if-nez p3, :cond_a

    .line 862
    return-void

    .line 866
    :cond_a
    nop

    .line 867
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p4

    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v0

    mul-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v0

    sub-int/2addr p4, v0

    int-to-long v0, p4

    .line 870
    iget-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long p4, v0, v2

    const/4 v2, 0x1

    if-gez p4, :cond_24

    .line 871
    iput-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    goto :goto_2c

    .line 872
    :cond_24
    iget-wide v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long p4, v0, v3

    if-lez p4, :cond_98

    .line 873
    iput-boolean p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 882
    :goto_2c
    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result p4

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    if-ge p4, v3, :cond_35

    move p2, v2

    .line 883
    :cond_35
    iget-boolean p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz p4, :cond_43

    .line 884
    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    goto :goto_4c

    .line 885
    :cond_43
    if-eqz p2, :cond_4c

    .line 886
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 889
    :cond_4c
    :goto_4c
    if-eqz p3, :cond_91

    .line 892
    iget-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz p1, :cond_57

    .line 893
    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result p1

    goto :goto_5b

    .line 895
    :cond_57
    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result p1

    .line 900
    :goto_5b
    iget p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/16 p4, 0xb

    if-ne p2, p4, :cond_64

    if-nez p1, :cond_64

    .line 901
    goto :goto_70

    .line 902
    :cond_64
    iget p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    if-nez p2, :cond_6c

    if-ne p1, p4, :cond_6c

    .line 903
    const/4 v2, -0x1

    goto :goto_70

    .line 905
    :cond_6c
    iget p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    sub-int v2, p1, p2

    .line 910
    :goto_70
    iget-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-nez p1, :cond_76

    if-gtz v2, :cond_7c

    :cond_76
    iget-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz p1, :cond_91

    if-gez v2, :cond_91

    .line 911
    :cond_7c
    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Landroid/icu/util/Calendar;

    move-result-object p1

    .line 912
    iget-boolean p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    const/4 p3, 0x5

    if-eqz p2, :cond_8a

    .line 913
    const/4 p2, -0x7

    invoke-virtual {p1, p3, p2}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_8e

    .line 915
    :cond_8a
    const/4 p2, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/icu/util/Calendar;->add(II)V

    .line 917
    :goto_8e
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 920
    :cond_91
    iput-wide v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    .line 921
    iget p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 922
    return-void

    .line 875
    :cond_98
    return-void
.end method

.method private blacklist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .line 851
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 852
    return-void
.end method

.method private blacklist setMonthDisplayed(Landroid/icu/util/Calendar;)V
    .registers 10

    .line 931
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 932
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    .line 935
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 936
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const/16 v7, 0x34

    move-wide v5, v3

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p1

    .line 937
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 939
    return-void
.end method

.method private blacklist setUpAdapter()V
    .registers 3

    .line 694
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    if-nez v0, :cond_1e

    .line 695
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 696
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 708
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 712
    :cond_1e
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 713
    return-void
.end method

.method private blacklist setUpHeader()V
    .registers 9

    .line 719
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    .line 720
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    .line 721
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/2addr v1, v2

    :goto_13
    if-ge v0, v1, :cond_3b

    .line 722
    const/4 v2, 0x7

    if-le v0, v2, :cond_1b

    add-int/lit8 v2, v0, -0x7

    goto :goto_1c

    :cond_1b
    move v2, v0

    .line 723
    :goto_1c
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0x32

    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 725
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0xa

    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 729
    :cond_3b
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 730
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_4e

    .line 731
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_51

    .line 733
    :cond_4e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :goto_51
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    move v4, v2

    :goto_59
    if-ge v4, v0, :cond_8c

    .line 736
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 737
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_6d

    .line 738
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 740
    :cond_6d
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_86

    .line 741
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    add-int/lit8 v7, v4, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 743
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_89

    .line 745
    :cond_86
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 748
    :cond_8c
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 749
    return-void
.end method

.method private blacklist setUpListView()V
    .registers 3

    .line 756
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 757
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 758
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 759
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 772
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 773
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 774
    return-void
.end method

.method private blacklist updateDateTextSize()V
    .registers 4

    .line 646
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 648
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    .line 650
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 651
    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 8

    .line 604
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 606
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result p1

    .line 607
    const/4 p2, 0x0

    move v1, p2

    :goto_f
    if-ge v1, p1, :cond_40

    .line 608
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 609
    invoke-virtual {v2, v0, p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 612
    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 613
    new-array p1, p1, [I

    .line 614
    invoke-virtual {v2, p2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getLocationOnScreen([I)V

    .line 615
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    .line 616
    const/4 v0, 0x1

    aget p2, p2, v0

    aget p1, p1, v0

    sub-int/2addr p2, p1

    .line 618
    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 619
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 620
    return v0

    .line 607
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 623
    :cond_40
    return p2
.end method

.method public blacklist getDate()J
    .registers 3

    .line 594
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDateTextAppearance()I
    .registers 2

    .line 485
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 575
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public blacklist getFocusedMonthDateColor()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public blacklist getMaxDate()J
    .registers 3

    .line 544
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinDate()J
    .registers 3

    .line 518
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getSelectedWeekBackgroundColor()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public blacklist getShowWeekNumber()Z
    .registers 2

    .line 559
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public blacklist getShownWeekCount()I
    .registers 2

    .line 348
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method public blacklist getUnfocusedMonthDateColor()I
    .registers 2

    .line 405
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method public blacklist getWeekDayTextAppearance()I
    .registers 2

    .line 471
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public blacklist getWeekNumberColor()I
    .registers 2

    .line 420
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public blacklist getWeekSeparatorLineColor()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 628
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 629
    return-void
.end method

.method protected blacklist setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    .line 638
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 640
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 641
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 642
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 643
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 644
    return-void
.end method

.method public blacklist setDate(J)V
    .registers 4

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    .line 581
    return-void
.end method

.method public blacklist setDate(JZZ)V
    .registers 6

    .line 585
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 586
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 587
    return-void

    .line 589
    :cond_14
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 590
    return-void
.end method

.method public blacklist setDateTextAppearance(I)V
    .registers 3

    .line 476
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_c

    .line 477
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 478
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 479
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 481
    :cond_c
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3

    .line 564
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_5

    .line 565
    return-void

    .line 567
    :cond_5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 568
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$minit(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 569
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 570
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 571
    return-void
.end method

.method public blacklist setFocusedMonthDateColor(I)V
    .registers 5

    .line 372
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    if-eq v0, p1, :cond_23

    .line 373
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 374
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    .line 375
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_23

    .line 376
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 377
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasFocusedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 378
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 375
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 382
    :cond_23
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .registers 5

    .line 523
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 524
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 525
    return-void

    .line 527
    :cond_10
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 529
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$minit(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 530
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 531
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 532
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_37

    .line 538
    :cond_32
    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 540
    :goto_37
    return-void
.end method

.method public blacklist setMinDate(J)V
    .registers 5

    .line 490
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 491
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 492
    return-void

    .line 494
    :cond_10
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 499
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 500
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 501
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2, v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 504
    :cond_2a
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$minit(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 505
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 506
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_46

    .line 512
    :cond_41
    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 514
    :goto_46
    return-void
.end method

.method public blacklist setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2

    .line 599
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 600
    return-void
.end method

.method public blacklist setSelectedDateVerticalBar(I)V
    .registers 3

    .line 438
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 439
    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 440
    return-void
.end method

.method public blacklist setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 444
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_23

    .line 445
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    .line 447
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_23

    .line 448
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 449
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasSelectedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 450
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 447
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 454
    :cond_23
    return-void
.end method

.method public blacklist setSelectedWeekBackgroundColor(I)V
    .registers 5

    .line 353
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v0, p1, :cond_23

    .line 354
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 355
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    .line 356
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_23

    .line 357
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 358
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasSelectedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 359
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 356
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 363
    :cond_23
    return-void
.end method

.method public blacklist setShowWeekNumber(Z)V
    .registers 3

    .line 549
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_5

    .line 550
    return-void

    .line 552
    :cond_5
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 553
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 554
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 555
    return-void
.end method

.method public blacklist setShownWeekCount(I)V
    .registers 3

    .line 340
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_b

    .line 341
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 342
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {p1}, Landroid/widget/CalendarView;->invalidate()V

    .line 344
    :cond_b
    return-void
.end method

.method public blacklist setUnfocusedMonthDateColor(I)V
    .registers 5

    .line 391
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    if-eq v0, p1, :cond_23

    .line 392
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 393
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    .line 394
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_23

    .line 395
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 396
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasUnfocusedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 397
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 394
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 401
    :cond_23
    return-void
.end method

.method public blacklist setWeekDayTextAppearance(I)V
    .registers 3

    .line 463
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_9

    .line 464
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 465
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 467
    :cond_9
    return-void
.end method

.method public blacklist setWeekNumberColor(I)V
    .registers 3

    .line 410
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_d

    .line 411
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 412
    iget-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz p1, :cond_d

    .line 413
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 416
    :cond_d
    return-void
.end method

.method public blacklist setWeekSeparatorLineColor(I)V
    .registers 3

    .line 425
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_9

    .line 426
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 427
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 429
    :cond_9
    return-void
.end method
