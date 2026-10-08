.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# static fields
.field private static final blacklist DEFAULT_ENABLED_STATE:Z = true

.field private static final blacklist HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final blacklist mAmPmButton:Landroid/widget/Button;

.field private final blacklist mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final blacklist mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final blacklist mAmPmStrings:[Ljava/lang/String;

.field private final blacklist mDivider:Landroid/widget/TextView;

.field private blacklist mHourFormat:C

.field private final blacklist mHourSpinner:Landroid/widget/NumberPicker;

.field private final blacklist mHourSpinnerInput:Landroid/widget/EditText;

.field private blacklist mHourWithTwoDigit:Z

.field private blacklist mIs24HourView:Z

.field private blacklist mIsAm:Z

.field private blacklist mIsEnabled:Z

.field private final blacklist mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final blacklist mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final blacklist mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHourSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAm(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinuteSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAm(Landroid/widget/TimePickerSpinnerDelegate;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAmPmControl(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInputState(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 77
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 79
    const/16 p4, 0xd

    const p5, 0x1090170

    invoke-virtual {p3, p4, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 81
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 84
    iget-object p5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 85
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 88
    const p3, 0x102035e

    invoke-virtual {p1, p3}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 89
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance p5, Landroid/widget/TimePickerSpinnerDelegate$1;

    invoke-direct {p5, p0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, p5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 102
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const p5, 0x102044a

    invoke-virtual {p3, p5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 103
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 106
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v2, 0x10202da

    invoke-virtual {p3, v2}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 107
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz p3, :cond_66

    .line 108
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->setDividerText()V

    .line 112
    :cond_66
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v2, 0x1020401

    invoke-virtual {p3, v2}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 113
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p3, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 114
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0x3b

    invoke-virtual {p3, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 115
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {p3, v2, v3}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 116
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 117
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v2, Landroid/widget/TimePickerSpinnerDelegate$2;

    invoke-direct {v2, p0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 140
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p3, p5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 141
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 144
    invoke-static {p2}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 147
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const p3, 0x102020d

    invoke-virtual {p2, p3}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 148
    instance-of p3, p2, Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz p3, :cond_d0

    .line 149
    iput-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 150
    iput-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 151
    move-object p3, p2

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 152
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance p5, Landroid/widget/TimePickerSpinnerDelegate$3;

    invoke-direct {p5, p0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_102

    .line 161
    :cond_d0
    iput-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 162
    move-object p3, p2

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 163
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p3, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 164
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p3, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 165
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 166
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$4;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 175
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p3, p5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 176
    iget-object p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 p5, 0x6

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 179
    :goto_102
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result p3

    if-eqz p3, :cond_12e

    .line 181
    const p3, 0x1020598

    invoke-virtual {p1, p3}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 182
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 186
    nop

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    .line 189
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p3

    .line 190
    if-eq p2, p3, :cond_12e

    .line 191
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 196
    :cond_12e
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 199
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 200
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 201
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 204
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 205
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->setHour(I)V

    .line 206
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_161

    .line 209
    invoke-virtual {p0, p4}, Landroid/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 213
    :cond_161
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->setContentDescriptions()V

    .line 216
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_171

    .line 217
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 219
    :cond_171
    return-void
.end method

.method private blacklist getHourFormatData()V
    .registers 6

    .line 227
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    .line 228
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_9

    const-string v1, "Hm"

    goto :goto_b

    :cond_9
    const-string v1, "hm"

    .line 227
    :goto_b
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 231
    nop

    .line 234
    nop

    :goto_18
    if-ge v2, v1, :cond_40

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 236
    const/16 v4, 0x48

    if-eq v3, v4, :cond_32

    const/16 v4, 0x68

    if-eq v3, v4, :cond_32

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_32

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_2f

    goto :goto_32

    .line 234
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 237
    :cond_32
    :goto_32
    iput-char v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    .line 238
    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ge v2, v1, :cond_40

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_40

    .line 239
    iput-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 244
    :cond_40
    return-void
.end method

.method private blacklist isAmPmAtStart()Z
    .registers 3

    .line 247
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist onTimeChanged()V
    .registers 5

    .line 508
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 509
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_19

    .line 510
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    .line 511
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    .line 510
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 513
    :cond_19
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_2c

    .line 514
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 516
    :cond_2c
    return-void
.end method

.method private blacklist setContentDescriptions()V
    .registers 5

    .line 551
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040a67

    const v2, 0x1020377

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 553
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040a61

    const v3, 0x10202cb

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 556
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040a66

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 558
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040a60

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 561
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_3a

    .line 562
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040a68

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 564
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040a62

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 567
    :cond_3a
    return-void
.end method

.method private blacklist setCurrentHour(IZ)V
    .registers 5

    .line 299
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 300
    return-void

    .line 302
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 303
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_25

    .line 305
    const/16 v0, 0xc

    if-lt p1, v0, :cond_1c

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 307
    if-le p1, v0, :cond_22

    .line 308
    add-int/lit8 p1, p1, -0xc

    goto :goto_22

    .line 311
    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 312
    if-nez p1, :cond_22

    .line 313
    move p1, v0

    .line 316
    :cond_22
    :goto_22
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 318
    :cond_25
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 319
    if-eqz p2, :cond_2f

    .line 320
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    .line 322
    :cond_2f
    return-void
.end method

.method private blacklist setCurrentMinute(IZ)V
    .registers 4

    .line 342
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 343
    return-void

    .line 345
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 346
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 347
    if-eqz p2, :cond_14

    .line 348
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    .line 350
    :cond_14
    return-void
.end method

.method private blacklist setDividerText()V
    .registers 5

    .line 262
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_7

    const-string v0, "Hm"

    goto :goto_9

    :cond_7
    const-string v0, "hm"

    .line 263
    :goto_9
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 267
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 268
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 270
    :cond_1e
    if-ne v1, v2, :cond_23

    .line 272
    const-string v0, ":"

    goto :goto_3a

    .line 274
    :cond_23
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x6d

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 275
    if-ne v3, v2, :cond_36

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 278
    :cond_36
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_3a
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private blacklist trySetContentDescription(Landroid/view/View;II)V
    .registers 4

    .line 570
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 571
    if-eqz p1, :cond_f

    .line 572
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 574
    :cond_f
    return-void
.end method

.method private blacklist updateAmPmControl()V
    .registers 5

    .line 488
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 489
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_12

    .line 490
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_3a

    .line 492
    :cond_12
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3a

    .line 495
    :cond_18
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 496
    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 497
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 498
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_3a

    .line 500
    :cond_2c
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 504
    :goto_3a
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 505
    return-void
.end method

.method private blacklist updateHourControl()V
    .registers 5

    .line 519
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    .line 521
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_1b

    .line 522
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 523
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_47

    .line 525
    :cond_1b
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 526
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_47

    .line 530
    :cond_28
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_3b

    .line 531
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 532
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_47

    .line 534
    :cond_3b
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 535
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 538
    :goto_47
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v1, :cond_52

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 539
    return-void
.end method

.method private blacklist updateInputState()V
    .registers 4

    .line 472
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 473
    if-eqz v0, :cond_49

    .line 474
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 475
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 476
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_49

    .line 477
    :cond_20
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 478
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 479
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_49

    .line 480
    :cond_33
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 481
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 482
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 485
    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist updateMinuteControl()V
    .registers 3

    .line 542
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 543
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_13

    .line 545
    :cond_d
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 547
    :goto_13
    return-void
.end method


# virtual methods
.method public blacklist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 419
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 420
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist getAmView()Landroid/view/View;
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public blacklist getBaseline()I
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public blacklist getHour()I
    .registers 3

    .line 326
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 327
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 328
    return v0

    .line 329
    :cond_d
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_14

    .line 330
    rem-int/lit8 v0, v0, 0xc

    return v0

    .line 332
    :cond_14
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public blacklist getHourView()Landroid/view/View;
    .registers 2

    .line 442
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public blacklist getMinute()I
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMinuteView()Landroid/view/View;
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public blacklist getPmView()Landroid/view/View;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public blacklist is24Hour()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 395
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public blacklist onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    .line 425
    nop

    .line 426
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_8

    .line 427
    const/16 v0, 0x81

    goto :goto_a

    .line 429
    :cond_8
    const/16 v0, 0x41

    .line 431
    :goto_a
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 432
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 433
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 434
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 433
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 410
    instance-of v0, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_14

    .line 411
    check-cast p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 412
    invoke-virtual {p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setHour(I)V

    .line 413
    invoke-virtual {p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    .line 415
    :cond_14
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 6

    .line 405
    new-instance v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZ)V

    return-object v0
.end method

.method public blacklist setDate(II)V
    .registers 4

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 287
    invoke-direct {p0, p2, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(IZ)V

    .line 289
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    .line 290
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 3

    .line 380
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 382
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 384
    :cond_e
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1d

    .line 386
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_22

    .line 388
    :cond_1d
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 390
    :goto_22
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 391
    return-void
.end method

.method public blacklist setHour(I)V
    .registers 3

    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 295
    return-void
.end method

.method public blacklist setIs24Hour(Z)V
    .registers 3

    .line 358
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v0, p1, :cond_5

    .line 359
    return-void

    .line 362
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    .line 364
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 365
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 366
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 368
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 369
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 370
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 371
    return-void
.end method

.method public blacklist setMinute(I)V
    .registers 3

    .line 338
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(IZ)V

    .line 339
    return-void
.end method

.method public blacklist validateInput()Z
    .registers 2

    .line 223
    const/4 v0, 0x1

    return v0
.end method
