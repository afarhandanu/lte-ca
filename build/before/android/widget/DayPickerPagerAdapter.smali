.class Landroid/widget/DayPickerPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerPagerAdapter$ViewHolder;,
        Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final blacklist MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private blacklist mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final blacklist mCalendarViewId:I

.field private blacklist mCount:I

.field private blacklist mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private blacklist mDayOfWeekTextAppearance:I

.field private blacklist mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private blacklist mDayTextAppearance:I

.field private blacklist mFirstDayOfWeek:I

.field private final blacklist mInflater:Landroid/view/LayoutInflater;

.field private final blacklist mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLayoutResId:I

.field private final blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private final blacklist mMinDate:Landroid/icu/util/Calendar;

.field private blacklist mMonthTextAppearance:I

.field private final blacklist mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private blacklist mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private blacklist mSelectedDay:Landroid/icu/util/Calendar;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .registers 5

    .line 67
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 42
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 43
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 315
    new-instance v0, Landroid/widget/DayPickerPagerAdapter$1;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerPagerAdapter$1;-><init>(Landroid/widget/DayPickerPagerAdapter;)V

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iput p2, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 70
    iput p3, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    .line 72
    const p2, 0x101042c

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private blacklist getMonthForPosition(I)I
    .registers 4

    .line 205
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0xc

    return p1
.end method

.method private blacklist getPositionForDay(Landroid/icu/util/Calendar;)I
    .registers 5

    .line 214
    if-nez p1, :cond_4

    .line 215
    const/4 p1, -0x1

    return p1

    .line 218
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 220
    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    .line 221
    return v1
.end method

.method private blacklist getYearForPosition(I)I
    .registers 4

    .line 209
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xc

    .line 210
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public blacklist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 286
    check-cast p3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 287
    iget-object p3, p3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 289
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 290
    return-void
.end method

.method public blacklist getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z
    .registers 6

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v0

    .line 113
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 114
    if-nez v0, :cond_11

    .line 115
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_11
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    .line 118
    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public blacklist getCount()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    return v0
.end method

.method blacklist getDayOfWeekTextAppearance()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    return v0
.end method

.method blacklist getDayTextAppearance()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public blacklist getItemPosition(Ljava/lang/Object;)I
    .registers 2

    .line 294
    check-cast p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 295
    iget p1, p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    return p1
.end method

.method public blacklist getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object p1, p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 301
    if-eqz p1, :cond_11

    .line 302
    invoke-virtual {p1}, Landroid/widget/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 304
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;
    .registers 2

    .line 308
    if-nez p1, :cond_4

    .line 309
    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_4
    check-cast p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 312
    iget-object p1, p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    return-object p1
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 13

    .line 226
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 228
    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/SimpleMonthView;

    .line 229
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    .line 230
    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 231
    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 232
    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setDayTextAppearance(I)V

    .line 234
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2f

    .line 235
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 238
    :cond_2f
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_38

    .line 239
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 242
    :cond_38
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4b

    .line 243
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 245
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 248
    :cond_4b
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getMonthForPosition(I)I

    move-result v4

    .line 249
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getYearForPosition(I)I

    move-result v5

    .line 252
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    const/4 v3, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v4, :cond_71

    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v5, :cond_71

    .line 254
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    goto :goto_72

    .line 256
    :cond_71
    const/4 v1, -0x1

    .line 260
    :goto_72
    iget-object v8, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v8, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v4, :cond_89

    iget-object v8, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v8, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_89

    .line 261
    iget-object v8, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v8, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v8

    goto :goto_8a

    .line 263
    :cond_89
    move v8, v7

    .line 267
    :goto_8a
    iget-object v9, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v9, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v4, :cond_a1

    iget-object v6, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v5, :cond_a1

    .line 268
    iget-object v6, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_a3

    .line 270
    :cond_a1
    const/16 v3, 0x1f

    .line 273
    :goto_a3
    iget v6, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    move v7, v8

    move v8, v3

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 276
    new-instance v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v1, p2, v0, v2}, Landroid/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V

    .line 277
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 281
    return-object v1
.end method

.method public blacklist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    .line 200
    check-cast p2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 201
    iget-object p2, p2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, p2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method blacklist setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 161
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 162
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method blacklist setDayOfWeekTextAppearance(I)V
    .registers 2

    .line 176
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 177
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method

.method blacklist setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 166
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 167
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 168
    return-void
.end method

.method blacklist setDayTextAppearance(I)V
    .registers 2

    .line 185
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 5

    .line 97
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 100
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 101
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    .line 102
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 103
    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 105
    :cond_1b
    return-void
.end method

.method blacklist setMonthTextAppearance(I)V
    .registers 2

    .line 171
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 172
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 173
    return-void
.end method

.method public blacklist setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .registers 2

    .line 157
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 158
    return-void
.end method

.method public blacklist setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .registers 6

    .line 79
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 80
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 82
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 83
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 84
    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    .line 87
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public blacklist setSelectedDay(Landroid/icu/util/Calendar;)V
    .registers 6

    .line 128
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v0

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v1

    .line 132
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1f

    if-ltz v0, :cond_1f

    .line 133
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 134
    if-eqz v0, :cond_1f

    .line 135
    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 140
    :cond_1f
    if-ltz v1, :cond_35

    .line 141
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 142
    if-eqz v0, :cond_35

    .line 143
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 144
    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 148
    :cond_35
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 149
    return-void
.end method
