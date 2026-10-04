.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;,
        Landroid/widget/SimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field private static final blacklist DAYS_IN_WEEK:I = 0x7

.field private static final blacklist DEFAULT_SELECTED_DAY:I = -0x1

.field private static final blacklist DEFAULT_WEEK_START:I = 0x1

.field private static final blacklist MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final blacklist MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final blacklist SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private blacklist mActivatedDay:I

.field private final blacklist mCalendar:Landroid/icu/util/Calendar;

.field private blacklist mCellWidth:I

.field private final blacklist mDayFormatter:Ljava/text/NumberFormat;

.field private blacklist mDayHeight:I

.field private final blacklist mDayHighlightPaint:Landroid/graphics/Paint;

.field private final blacklist mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private blacklist mDayOfWeekHeight:I

.field private final blacklist mDayOfWeekLabels:[Ljava/lang/String;

.field private final blacklist mDayOfWeekPaint:Landroid/text/TextPaint;

.field private blacklist mDayOfWeekStart:I

.field private final blacklist mDayPaint:Landroid/text/TextPaint;

.field private final blacklist mDaySelectorPaint:Landroid/graphics/Paint;

.field private blacklist mDaySelectorRadius:I

.field private blacklist mDayTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mDaysInMonth:I

.field private final blacklist mDesiredCellWidth:I

.field private final blacklist mDesiredDayHeight:I

.field private final blacklist mDesiredDayOfWeekHeight:I

.field private final blacklist mDesiredDaySelectorRadius:I

.field private final blacklist mDesiredMonthHeight:I

.field private blacklist mEnabledDayEnd:I

.field private blacklist mEnabledDayStart:I

.field private blacklist mHighlightedDay:I

.field private blacklist mIsTouchHighlighted:Z

.field private final blacklist mLocale:Ljava/util/Locale;

.field private blacklist mMonth:I

.field private blacklist mMonthHeight:I

.field private final blacklist mMonthPaint:Landroid/text/TextPaint;

.field private blacklist mMonthYearLabel:Ljava/lang/String;

.field private blacklist mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private blacklist mPaddedHeight:I

.field private blacklist mPaddedWidth:I

.field private blacklist mPreviouslyHighlightedDay:I

.field private blacklist mToday:I

.field private final blacklist mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private blacklist mWeekStart:I

.field private blacklist mYear:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivatedDay(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDayFormatter(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .registers 1

    iget-object p0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDaysInMonth(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonth(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToday(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYear(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDayAtLocation(Landroid/widget/SimpleMonthView;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDayEnabled(Landroid/widget/SimpleMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValidDayOfMonth(Landroid/widget/SimpleMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monDayClicked(Landroid/widget/SimpleMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 157
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 78
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 79
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 80
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 82
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 85
    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 117
    const/4 p2, -0x1

    iput p2, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 123
    iput p2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 126
    const/4 p3, 0x1

    iput p3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 138
    iput p3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 141
    const/16 p4, 0x1f

    iput p4, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 148
    iput p2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 149
    iput p2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 150
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 168
    const p2, 0x1050159

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 169
    const p2, 0x1050154

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 170
    const p2, 0x1050153

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 171
    const p2, 0x1050158

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 172
    const p2, 0x1050156

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 176
    new-instance p2, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p2, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 177
    iget-object p2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, p2}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 178
    invoke-virtual {p0, p3}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    .line 180
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 181
    iget-object p2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 183
    iget-object p2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 185
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 186
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 188
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 189
    return-void
.end method

.method private blacklist applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .registers 7

    .line 221
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 224
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_19

    .line 226
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 229
    :cond_19
    nop

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 229
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_37

    .line 234
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 235
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    :cond_37
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-object v0
.end method

.method private blacklist drawDays(Landroid/graphics/Canvas;)V
    .registers 18

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 676
    iget v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 677
    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 678
    iget v5, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 681
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 682
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v3, v7

    .line 684
    invoke-direct {v0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v7

    const/4 v9, 0x1

    :goto_23
    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v9, v10, :cond_b1

    .line 685
    mul-int v10, v5, v7

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    .line 687
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_37

    .line 688
    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v10, v11, v10

    goto :goto_38

    .line 690
    :cond_37
    nop

    .line 693
    :goto_38
    nop

    .line 695
    invoke-direct {v0, v9}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v11

    .line 696
    if-eqz v11, :cond_42

    .line 697
    const/16 v13, 0x8

    goto :goto_43

    .line 696
    :cond_42
    const/4 v13, 0x0

    .line 700
    :goto_43
    iget v14, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-ne v14, v9, :cond_49

    const/4 v14, 0x1

    goto :goto_4a

    :cond_49
    const/4 v14, 0x0

    .line 701
    :goto_4a
    iget v15, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v9, :cond_50

    const/4 v15, 0x1

    goto :goto_51

    :cond_50
    const/4 v15, 0x0

    .line 702
    :goto_51
    if-eqz v14, :cond_65

    .line 703
    or-int/lit8 v13, v13, 0x20

    .line 706
    if-eqz v15, :cond_5a

    iget-object v11, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_5c

    .line 707
    :cond_5a
    iget-object v11, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 708
    :goto_5c
    int-to-float v15, v10

    int-to-float v8, v3

    iget v12, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v12, v12

    invoke-virtual {v1, v15, v8, v12, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_76

    .line 709
    :cond_65
    if-eqz v15, :cond_76

    .line 710
    or-int/lit8 v13, v13, 0x10

    .line 712
    if-eqz v11, :cond_77

    .line 714
    int-to-float v8, v10

    int-to-float v11, v3

    iget v12, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v12, v12

    iget-object v15, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v11, v12, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_77

    .line 709
    :cond_76
    :goto_76
    nop

    .line 719
    :cond_77
    :goto_77
    iget v8, v0, Landroid/widget/SimpleMonthView;->mToday:I

    if-ne v8, v9, :cond_7d

    const/4 v8, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v8, 0x0

    .line 721
    :goto_7e
    if-eqz v8, :cond_8a

    if-nez v14, :cond_8a

    .line 722
    iget-object v8, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    const/4 v12, 0x0

    goto :goto_95

    .line 724
    :cond_8a
    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    move-result-object v8

    .line 725
    iget-object v11, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    .line 727
    :goto_95
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 729
    iget-object v8, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v13, v9

    invoke-virtual {v8, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    int-to-float v10, v10

    int-to-float v11, v3

    sub-float/2addr v11, v6

    invoke-virtual {v1, v8, v10, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 731
    add-int/lit8 v7, v7, 0x1

    .line 733
    const/4 v8, 0x7

    if-ne v7, v8, :cond_ad

    .line 734
    nop

    .line 735
    add-int/2addr v3, v4

    move v7, v12

    .line 684
    :cond_ad
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_23

    .line 738
    :cond_b1
    return-void
.end method

.method private blacklist drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .registers 10

    .line 648
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 649
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 650
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 651
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 654
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 655
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 657
    const/4 v2, 0x0

    :goto_18
    const/4 v5, 0x7

    if-ge v2, v5, :cond_39

    .line 658
    mul-int v5, v3, v2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    .line 660
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 661
    iget v6, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v5, v6, v5

    goto :goto_2c

    .line 663
    :cond_2b
    nop

    .line 666
    :goto_2c
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v6, v6, v2

    .line 667
    int-to-float v5, v5

    int-to-float v7, v1

    sub-float/2addr v7, v4

    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 669
    :cond_39
    return-void
.end method

.method private blacklist drawMonth(Landroid/graphics/Canvas;)V
    .registers 6

    .line 634
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 637
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 638
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 640
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 641
    return-void
.end method

.method private blacklist ensureFocusedDay()V
    .registers 3

    .line 596
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 597
    return-void

    .line 599
    :cond_6
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_f

    .line 600
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 601
    return-void

    .line 603
    :cond_f
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_18

    .line 604
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 605
    return-void

    .line 607
    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 608
    return-void
.end method

.method private blacklist findClosestColumn(Landroid/graphics/Rect;)I
    .registers 4

    .line 559
    if-nez p1, :cond_4

    .line 560
    const/4 p1, 0x3

    return p1

    .line 561
    :cond_4
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 562
    return v1

    .line 564
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mPaddingLeft:I

    sub-int/2addr p1, v0

    .line 565
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int/2addr p1, v0

    .line 566
    const/4 v0, 0x6

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 567
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_23

    rsub-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, -0x1

    :cond_23
    return p1
.end method

.method private blacklist findClosestRow(Landroid/graphics/Rect;)I
    .registers 7

    .line 529
    if-nez p1, :cond_4

    .line 530
    const/4 p1, 0x3

    return p1

    .line 531
    :cond_4
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 532
    return v1

    .line 534
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 536
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 537
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v2, v3

    .line 538
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 541
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    .line 542
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v2, v0

    .line 544
    int-to-float p1, p1

    int-to-float v0, v2

    sub-float/2addr v0, v4

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 545
    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 546
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v0, v2

    .line 547
    div-int/lit8 v2, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    move v0, v1

    :goto_42
    sub-int/2addr v2, v0

    .line 549
    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 550
    return p1
.end method

.method private blacklist findDayOffset()I
    .registers 4

    .line 941
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    .line 942
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_e

    .line 943
    add-int/lit8 v0, v0, 0x7

    return v0

    .line 945
    :cond_e
    return v0
.end method

.method private blacklist getDayAtLocation(II)I
    .registers 6

    .line 958
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 959
    const/4 v0, -0x1

    if-ltz p1, :cond_46

    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt p1, v1, :cond_d

    goto :goto_46

    .line 963
    :cond_d
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    .line 964
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    .line 965
    if-lt p2, v1, :cond_45

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt p2, v2, :cond_1e

    goto :goto_45

    .line 971
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 972
    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int p1, v2, p1

    goto :goto_2a

    .line 974
    :cond_29
    nop

    .line 977
    :goto_2a
    sub-int/2addr p2, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr p2, v1

    .line 978
    mul-int/lit8 p1, p1, 0x7

    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr p1, v1

    .line 979
    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p1, p2

    .line 980
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result p2

    sub-int/2addr p1, p2

    .line 981
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p2

    if-nez p2, :cond_44

    .line 982
    return v0

    .line 985
    :cond_44
    return p1

    .line 966
    :cond_45
    :goto_45
    return v0

    .line 960
    :cond_46
    :goto_46
    return v0
.end method

.method private static blacklist getDaysInMonth(II)I
    .registers 2

    .line 849
    packed-switch p0, :pswitch_data_24

    .line 866
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 862
    :pswitch_b
    const/16 p0, 0x1e

    return p0

    .line 864
    :pswitch_e
    rem-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_1d

    rem-int/lit8 p0, p1, 0x64

    if-nez p0, :cond_1a

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_1d

    :cond_1a
    const/16 p0, 0x1d

    goto :goto_1f

    :cond_1d
    const/16 p0, 0x1c

    :goto_1f
    return p0

    .line 857
    :pswitch_20
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_e
        :pswitch_20
        :pswitch_b
        :pswitch_20
        :pswitch_b
        :pswitch_20
        :pswitch_20
        :pswitch_b
        :pswitch_20
        :pswitch_b
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist initPaints(Landroid/content/res/Resources;)V
    .registers 9

    .line 275
    const v0, 0x1040344

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    const v1, 0x104033a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    const v2, 0x104033b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    const v3, 0x105015a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 281
    const v4, 0x1050155

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 283
    const v5, 0x1050157

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 286
    iget-object v5, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 287
    iget-object v5, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 288
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 289
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 293
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v3, v4

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 294
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 295
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 296
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 302
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 304
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 308
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 309
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 310
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 311
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    return-void
.end method

.method private blacklist isDayEnabled(I)Z
    .registers 3

    .line 741
    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private blacklist isFirstDayOfWeek(I)Z
    .registers 3

    .line 611
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 612
    add-int/2addr v0, p1

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private blacklist isLastDayOfWeek(I)Z
    .registers 3

    .line 616
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 617
    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private blacklist isValidDayOfMonth(I)Z
    .registers 4

    .line 745
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist isValidDayOfWeek(I)Z
    .registers 3

    .line 749
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x7

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist isValidMonth(I)Z
    .registers 2

    .line 753
    if-ltz p0, :cond_8

    const/16 v0, 0xb

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private blacklist moveOneDay(Z)Z
    .registers 4

    .line 470
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 471
    nop

    .line 472
    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    .line 473
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_2d

    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge p1, v1, :cond_2d

    .line 474
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 475
    goto :goto_2e

    .line 478
    :cond_1b
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_2d

    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le p1, v0, :cond_2d

    .line 479
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 480
    goto :goto_2e

    .line 483
    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0
.end method

.method private blacklist onDayClicked(I)Z
    .registers 5

    .line 1029
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_28

    .line 1033
    :cond_d
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_21

    .line 1034
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1035
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    .line 1036
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    .line 1040
    :cond_21
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 1041
    return v1

    .line 1030
    :cond_28
    :goto_28
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist sameDay(ILandroid/icu/util/Calendar;)Z
    .registers 6

    .line 871
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1a

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1a

    .line 872
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 871
    :goto_1b
    return v1
.end method

.method private blacklist updateDayOfWeekLabels()V
    .registers 6

    .line 205
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v0

    .line 207
    nop

    :goto_d
    const/4 v2, 0x7

    if-ge v1, v2, :cond_21

    .line 208
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v0, v4

    aput-object v2, v3, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 210
    :cond_21
    return-void
.end method

.method private blacklist updateMonthYearLabel()V
    .registers 4

    .line 192
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 198
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 199
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 354
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public blacklist getBoundsForDay(ILandroid/graphics/Rect;)Z
    .registers 9

    .line 995
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 996
    const/4 p1, 0x0

    return p1

    .line 999
    :cond_8
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr p1, v1

    .line 1002
    rem-int/lit8 v1, p1, 0x7

    .line 1003
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 1005
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1006
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    sub-int/2addr v3, v1

    goto :goto_2c

    .line 1008
    :cond_26
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 1012
    :goto_2c
    div-int/lit8 p1, p1, 0x7

    .line 1013
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 1014
    iget v4, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v4, v5

    .line 1015
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    mul-int/2addr p1, v1

    add-int/2addr v5, p1

    .line 1017
    add-int/2addr v2, v3

    add-int/2addr v1, v5

    invoke-virtual {p2, v3, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1019
    return v0
.end method

.method public blacklist getCellWidth()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 573
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_a

    .line 574
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_d

    .line 576
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 578
    :goto_d
    return-void
.end method

.method public blacklist getMonthHeight()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public blacklist getMonthYearLabel()Ljava/lang/String;
    .registers 2

    .line 644
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 622
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    .line 623
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    .line 624
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 626
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 627
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 628
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 630
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 631
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8

    .line 489
    if-eqz p1, :cond_54

    .line 493
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 494
    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_58

    goto :goto_4e

    .line 506
    :sswitch_b
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v2

    .line 507
    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 508
    if-ge v2, v1, :cond_15

    add-int/lit8 v2, v2, 0x7

    :cond_15
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 509
    goto :goto_4e

    .line 496
    :sswitch_18
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v2

    .line 497
    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    :goto_23
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 498
    goto :goto_4e

    .line 512
    :sswitch_26
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v2

    .line 513
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x7

    .line 514
    sub-int/2addr v2, v0

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 515
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le v2, v0, :cond_3a

    add-int/lit8 v2, v2, -0x7

    :cond_3a
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 516
    goto :goto_4e

    .line 501
    :sswitch_3d
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v2

    add-int/2addr v2, v1

    .line 502
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 503
    nop

    .line 519
    :goto_4e
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 520
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 522
    :cond_54
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 523
    return-void

    :sswitch_data_58
    .sparse-switch
        0x11 -> :sswitch_3d
        0x21 -> :sswitch_26
        0x42 -> :sswitch_18
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method protected blacklist onFocusLost()V
    .registers 2

    .line 582
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_e

    .line 584
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 586
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 588
    :cond_e
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 589
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 400
    nop

    .line 401
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_9a

    goto/16 :goto_8f

    .line 439
    :sswitch_d
    nop

    .line 440
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 441
    const/4 v0, 0x2

    goto :goto_1f

    .line 442
    :cond_16
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 443
    move v0, v2

    goto :goto_1f

    .line 442
    :cond_1e
    move v0, v3

    .line 445
    :goto_1f
    if-eqz v0, :cond_8f

    .line 446
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 448
    move-object v4, p0

    .line 450
    :cond_26
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 451
    if-eqz v4, :cond_34

    if-eq v4, p0, :cond_34

    .line 452
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_26

    .line 453
    :cond_34
    if-eqz v4, :cond_3a

    .line 454
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 455
    return v2

    .line 457
    :cond_3a
    goto :goto_8f

    .line 433
    :sswitch_3b
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8f

    .line 434
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 435
    return v2

    .line 408
    :sswitch_46
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 409
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v3

    goto :goto_8f

    .line 403
    :sswitch_56
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 404
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v3

    goto :goto_8f

    .line 422
    :sswitch_65
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 423
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 424
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 425
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 426
    move v3, v2

    goto :goto_8f

    .line 413
    :sswitch_7c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 414
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 415
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v0, v1, :cond_8f

    .line 416
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 417
    move v3, v2

    .line 461
    :cond_8f
    :goto_8f
    if-eqz v3, :cond_95

    .line 462
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 463
    return v2

    .line 465
    :cond_95
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :sswitch_data_9a
    .sparse-switch
        0x13 -> :sswitch_7c
        0x14 -> :sswitch_65
        0x15 -> :sswitch_56
        0x16 -> :sswitch_46
        0x17 -> :sswitch_3b
        0x3d -> :sswitch_d
        0x42 -> :sswitch_3b
        0xa0 -> :sswitch_3b
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 896
    if-nez p1, :cond_3

    .line 897
    return-void

    .line 901
    :cond_3
    sub-int/2addr p4, p2

    .line 902
    sub-int/2addr p5, p3

    .line 903
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result p1

    .line 904
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result p2

    .line 905
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result p3

    .line 906
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v0

    .line 907
    sub-int/2addr p4, p3

    .line 908
    sub-int/2addr p5, v0

    .line 909
    sub-int/2addr p4, p1

    .line 910
    sub-int/2addr p5, p2

    .line 911
    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq p4, v1, :cond_68

    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-ne p5, v1, :cond_22

    goto :goto_68

    .line 915
    :cond_22
    iput p4, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 916
    iput p5, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 920
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 921
    int-to-float p2, p5

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 922
    iget p4, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 923
    iget p5, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 p5, p5, 0x7

    .line 924
    iput p4, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 925
    iget p4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 926
    iget p4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 927
    iput p5, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 931
    div-int/lit8 p5, p5, 0x2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p5, p1

    .line 932
    iget p1, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 933
    iget p2, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 934
    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 933
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 937
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 938
    return-void

    .line 912
    :cond_68
    :goto_68
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6

    .line 877
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 879
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 880
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 881
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 882
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result p1

    .line 883
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result p2

    .line 884
    invoke-virtual {p0, p1, p2}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    .line 885
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 6

    .line 1047
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1048
    const/4 p1, 0x0

    return-object p1

    .line 1051
    :cond_8
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1055
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    .line 1056
    if-ltz v0, :cond_38

    .line 1057
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1058
    const/16 p1, 0x3e8

    goto :goto_2f

    .line 1059
    :cond_2d
    const/16 p1, 0x3ea

    .line 1060
    :goto_2f
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    .line 1063
    :cond_38
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2

    .line 889
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 891
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    .line 892
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 363
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    .line 380
    :pswitch_18
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p1

    .line 381
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 385
    :pswitch_1f
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 386
    iput-boolean v2, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 387
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_3e

    .line 366
    :pswitch_28
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    .line 367
    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 368
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v1, v0, :cond_39

    .line 369
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 370
    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 371
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 373
    :cond_39
    if-nez p1, :cond_3e

    if-gez v0, :cond_3e

    .line 375
    return v2

    .line 390
    :cond_3e
    :goto_3e
    return v3

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_28
        :pswitch_18
        :pswitch_28
        :pswitch_1f
    .end packed-switch
.end method

.method blacklist setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 341
    nop

    .line 342
    const/16 v0, 0x18

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 341
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 343
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 345
    return-void
.end method

.method public blacklist setDayOfWeekTextAppearance(I)V
    .registers 3

    .line 258
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 259
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 260
    return-void
.end method

.method blacklist setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 321
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 322
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 323
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 324
    return-void
.end method

.method blacklist setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 332
    nop

    .line 333
    const/16 v0, 0x28

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 334
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 338
    return-void
.end method

.method public blacklist setDayTextAppearance(I)V
    .registers 3

    .line 263
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 264
    if-eqz p1, :cond_a

    .line 265
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 268
    :cond_a
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 269
    return-void
.end method

.method blacklist setDayTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 327
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 328
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 329
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3

    .line 777
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 778
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_11

    .line 780
    :cond_9
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 783
    :goto_11
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 786
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 787
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 788
    return-void
.end method

.method blacklist setMonthParams(IIIIII)V
    .registers 7

    .line 808
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 810
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 811
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 813
    :cond_a
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 815
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 p2, 0x2

    iget p3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {p1, p2, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 816
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget p2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 817
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 818
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 820
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 821
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_3c

    .line 823
    :cond_34
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 827
    :goto_3c
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p1

    .line 828
    const/4 p2, -0x1

    iput p2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 829
    iget p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget p4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {p2, p4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 830
    const/4 p2, 0x0

    :goto_4e
    iget p4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge p2, p4, :cond_5d

    .line 831
    add-int/lit8 p2, p2, 0x1

    .line 832
    invoke-direct {p0, p2, p1}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    move-result p4

    if-eqz p4, :cond_5c

    .line 833
    iput p2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 830
    :cond_5c
    goto :goto_4e

    .line 837
    :cond_5d
    iget p1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p5, p3, p1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 838
    iget p1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget p2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 840
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 841
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 844
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 845
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 846
    return-void
.end method

.method public blacklist setMonthTextAppearance(I)V
    .registers 3

    .line 252
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 254
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 255
    return-void
.end method

.method blacklist setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 315
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 316
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 317
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 318
    return-void
.end method

.method public blacklist setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .registers 2

    .line 348
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 349
    return-void
.end method

.method public blacklist setSelectedDay(I)V
    .registers 2

    .line 763
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 766
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 767
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 768
    return-void
.end method
