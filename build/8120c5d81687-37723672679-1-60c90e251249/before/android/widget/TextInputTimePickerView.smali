.class public Landroid/widget/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "TextInputTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o AM:I = 0x0

.field public static final greylist-max-o AMPM:I = 0x2

.field public static final greylist-max-o HOURS:I = 0x0

.field public static final greylist-max-o MINUTES:I = 0x1

.field private static final greylist-max-o PM:I = 0x1


# instance fields
.field private final greylist-max-o mAmPmSpinner:Landroid/widget/Spinner;

.field private final greylist-max-o mErrorLabel:Landroid/widget/TextView;

.field private greylist-max-o mErrorShowing:Z

.field private final greylist-max-o mHourEditText:Landroid/widget/EditText;

.field private greylist-max-o mHourFormatStartsAtZero:Z

.field private final greylist-max-o mHourLabel:Landroid/widget/TextView;

.field private final greylist-max-o mInputSeparatorView:Landroid/widget/TextView;

.field private greylist-max-o mIs24Hour:Z

.field private greylist-max-o mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final greylist-max-o mMinuteEditText:Landroid/widget/EditText;

.field private final greylist-max-o mMinuteLabel:Landroid/widget/TextView;

.field private blacklist mTimeSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinuteEditText(Landroid/widget/TextInputTimePickerView;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseAndSetHourInternal(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseAndSetMinuteInternal(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    const p2, 0x1090173

    invoke-static {p1, p2, p0}, Landroid/widget/TextInputTimePickerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const p2, 0x102037e

    invoke-virtual {p0, p2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 84
    const p2, 0x1020388

    invoke-virtual {p0, p2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 85
    const p2, 0x102038a

    invoke-virtual {p0, p2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    .line 86
    const p2, 0x10203a8

    invoke-virtual {p0, p2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    .line 87
    const p2, 0x10203a9

    invoke-virtual {p0, p2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    .line 88
    const p2, 0x10203aa

    invoke-virtual {p0, p2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    .line 90
    iget-object p2, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-instance p3, Landroid/widget/TextInputTimePickerView$1;

    invoke-direct {p3, p0, p1}, Landroid/widget/TextInputTimePickerView$1;-><init>(Landroid/widget/TextInputTimePickerView;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object p2, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-instance p3, Landroid/widget/TextInputTimePickerView$2;

    invoke-direct {p3, p0}, Landroid/widget/TextInputTimePickerView$2;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    const p2, 0x102020f

    invoke-virtual {p0, p2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 123
    invoke-static {p1}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    .line 124
    new-instance p3, Landroid/widget/ArrayAdapter;

    const p4, 0x1090009

    invoke-direct {p3, p1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 126
    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 127
    const/4 p1, 0x1

    aget-object p1, p2, p1

    invoke-static {p1}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 128
    iget-object p1, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object p1, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    new-instance p2, Landroid/widget/TextInputTimePickerView$3;

    invoke-direct {p2, p0}, Landroid/widget/TextInputTimePickerView$3;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    return-void
.end method

.method private greylist-max-o getHourOfDayFromLocalizedHour(I)I
    .registers 4

    .line 271
    nop

    .line 272
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 273
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_24

    const/16 v0, 0x18

    if-ne p1, v0, :cond_24

    .line 274
    move p1, v1

    goto :goto_24

    .line 277
    :cond_10
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_19

    const/16 v0, 0xc

    if-ne p1, v0, :cond_19

    .line 278
    move p1, v1

    .line 280
    :cond_19
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 281
    add-int/lit8 p1, p1, 0xc

    .line 284
    :cond_24
    :goto_24
    return p1
.end method

.method private blacklist isTimeSet()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mTimeSet:Z

    return v0
.end method

.method private greylist-max-o isValidLocalizedHour(I)Z
    .registers 5

    .line 265
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 266
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x17

    goto :goto_d

    :cond_b
    const/16 v2, 0xb

    :goto_d
    add-int/2addr v2, v0

    .line 267
    if-lt p1, v0, :cond_13

    if-gt p1, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private greylist-max-o parseAndSetHourInternal(Ljava/lang/String;)Z
    .registers 6

    .line 231
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 232
    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->isValidLocalizedHour(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_28

    .line 233
    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-eqz v1, :cond_11

    move v2, v0

    .line 234
    :cond_11
    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v1, :cond_18

    const/16 v1, 0x17

    goto :goto_1a

    :cond_18
    add-int/lit8 v1, v2, 0xb

    .line 235
    :goto_1a
    iget-object v3, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 236
    invoke-static {p1, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 235
    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result p1

    invoke-interface {v3, v0, p1}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 237
    return v0

    .line 239
    :cond_28
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result p1

    invoke-interface {v1, v0, p1}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 240
    invoke-direct {p0, v2}, Landroid/widget/TextInputTimePickerView;->setTimeSet(Z)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_34} :catch_35

    .line 241
    return v2

    .line 242
    :catch_35
    move-exception p1

    .line 244
    return v0
.end method

.method private greylist-max-o parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .registers 6

    .line 250
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 251
    const/16 v1, 0x3b

    const/4 v2, 0x1

    if-ltz p1, :cond_16

    if-le p1, v1, :cond_d

    goto :goto_16

    .line 255
    :cond_d
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-interface {v1, v2, p1}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 256
    invoke-direct {p0, v2}, Landroid/widget/TextInputTimePickerView;->setTimeSet(Z)V

    .line 257
    return v2

    .line 252
    :cond_16
    :goto_16
    iget-object v3, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {v3, v2, p1}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 253
    return v0

    .line 258
    :catch_20
    move-exception p1

    .line 260
    return v0
.end method

.method private greylist-max-o setError(Z)V
    .registers 6

    .line 178
    iput-boolean p1, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    .line 180
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1d

    move v1, v2

    :cond_1d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void
.end method

.method private blacklist setTimeSet(Z)V
    .registers 3

    .line 186
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mTimeSet:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    iput-boolean p1, p0, Landroid/widget/TextInputTimePickerView;->mTimeSet:Z

    .line 187
    return-void
.end method


# virtual methods
.method greylist-max-o setHourFormat(I)V
    .registers 7

    .line 150
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 152
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 154
    iget-object p1, p0, Landroid/widget/TextInputTimePickerView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 155
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    .line 156
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    .line 157
    return-void
.end method

.method greylist-max-o setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V
    .registers 2

    .line 146
    iput-object p1, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 147
    return-void
.end method

.method greylist-max-o updateSeparator(Ljava/lang/String;)V
    .registers 3

    .line 174
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method greylist-max-o updateTextInputValues(IIIZZ)V
    .registers 7

    .line 204
    iput-boolean p4, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    .line 205
    iput-boolean p5, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 207
    iget-object p5, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    const/4 p4, 0x4

    goto :goto_c

    :cond_b
    move p4, v0

    :goto_c
    invoke-virtual {p5, p4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 209
    if-nez p3, :cond_17

    .line 210
    iget-object p3, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1d

    .line 212
    :cond_17
    iget-object p3, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 215
    :goto_1d
    invoke-direct {p0}, Landroid/widget/TextInputTimePickerView;->isTimeSet()Z

    move-result p3

    const-string p4, "%02d"

    const-string p5, "%d"

    if-eqz p3, :cond_4a

    .line 216
    iget-object p3, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 219
    :cond_4a
    iget-object p3, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    :goto_6c
    iget-boolean p1, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    if-eqz p1, :cond_73

    .line 225
    invoke-virtual {p0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    .line 227
    :cond_73
    return-void
.end method

.method greylist-max-o validateInput()Z
    .registers 3

    .line 160
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 161
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 162
    :cond_17
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_21
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 164
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 165
    :cond_38
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_42
    invoke-direct {p0, v0}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 168
    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    .line 169
    :goto_51
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->setError(Z)V

    .line 170
    return v0
.end method
