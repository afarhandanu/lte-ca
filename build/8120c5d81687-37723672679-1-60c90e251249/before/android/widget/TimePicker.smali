.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$TimePickerDelegate;,
        Landroid/widget/TimePicker$OnTimeChangedListener;,
        Landroid/widget/TimePicker$AbstractTimePickerDelegate;,
        Landroid/widget/TimePicker$TimePickerMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field public static final blacklist MODE_CLOCK:I = 0x2

.field public static final blacklist MODE_SPINNER:I = 0x1


# instance fields
.field private final greylist mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

.field private final greylist-max-o mMode:I


# direct methods
.method public static synthetic blacklist $r8$lambda$bLumAqwrdHSPv4Q43T8JelnCgTc(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/widget/TimePicker;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TimePicker;->lambda$new$0(Landroid/content/Context;Landroid/widget/TimePicker;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/TimePicker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/TimePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 113
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 118
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 121
    invoke-direct/range {p0 .. p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getImportantForAutofill()I

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_d

    .line 125
    invoke-virtual {p0, v7}, Landroid/widget/TimePicker;->setImportantForAutofill(I)V

    .line 128
    :cond_d
    sget-object v0, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TimePicker;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 132
    const/16 v0, 0xa

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 133
    const/16 v2, 0x8

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 134
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    const/4 v3, 0x2

    if-ne v2, v3, :cond_41

    if-eqz v0, :cond_41

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e01cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mMode:I

    goto :goto_43

    .line 141
    :cond_41
    iput v2, p0, Landroid/widget/TimePicker;->mMode:I

    .line 144
    :goto_43
    iget v0, p0, Landroid/widget/TimePicker;->mMode:I

    packed-switch v0, :pswitch_data_6e

    .line 151
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    goto :goto_62

    .line 146
    :pswitch_55
    new-instance v0, Landroid/widget/TimePickerClockDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    .line 148
    nop

    .line 155
    :goto_62
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    new-instance v3, Landroid/widget/TimePicker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/widget/TimePicker$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Landroid/widget/TimePicker$TimePickerDelegate;->setAutoFillChangeListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 161
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_55
    .end packed-switch
.end method

.method static greylist-max-o getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 424
    invoke-static {p0}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object p0

    .line 425
    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getAmpmNarrowStrings()[Ljava/lang/String;

    move-result-object p0

    .line 428
    nop

    .line 429
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_24

    aget-object v1, p0, v1

    goto :goto_26

    :cond_24
    aget-object v1, v0, v1

    .line 430
    :goto_26
    const/4 v2, 0x1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_32

    aget-object p0, p0, v2

    goto :goto_34

    :cond_32
    aget-object p0, v0, v2

    :goto_34
    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 431
    return-object p0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/content/Context;Landroid/widget/TimePicker;II)V
    .registers 5

    .line 156
    const-class p2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    .line 157
    if-eqz p1, :cond_d

    .line 158
    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 160
    :cond_d
    return-void
.end method


# virtual methods
.method public whitelist autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 3

    .line 580
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 582
    :cond_7
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 583
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 345
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 4

    .line 574
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 575
    invoke-virtual {p0, p1, p2}, Landroid/widget/TimePicker;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 576
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 339
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAmView()Landroid/view/View;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getAmView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .registers 2

    .line 587
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 592
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public whitelist getCurrentHour()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentMinute()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHour()I
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public blacklist getHourView()Landroid/view/View;
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getHourView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinute()I
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public blacklist getMinuteView()Landroid/view/View;
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getMinuteView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMode()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/widget/TimePicker;->mMode:I

    return v0
.end method

.method public blacklist getPmView()Landroid/view/View;
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getPmView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist is24HourView()Z
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->is24Hour()Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 332
    check-cast p1, Landroid/view/View$BaseSavedState;

    .line 333
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 326
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 327
    iget-object v1, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCurrentHour(Ljava/lang/Integer;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->setHour(I)V

    .line 230
    return-void
.end method

.method public whitelist setCurrentMinute(Ljava/lang/Integer;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 251
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3

    .line 300
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    .line 302
    return-void
.end method

.method public whitelist setHour(I)V
    .registers 5

    .line 186
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setHour(I)V

    .line 187
    return-void
.end method

.method public whitelist setIs24HourView(Ljava/lang/Boolean;)V
    .registers 3

    .line 272
    if-nez p1, :cond_3

    .line 273
    return-void

    .line 276
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setIs24Hour(Z)V

    .line 277
    return-void
.end method

.method public whitelist setMinute(I)V
    .registers 5

    .line 207
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setMinute(I)V

    .line 208
    return-void
.end method

.method public whitelist setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 3

    .line 295
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 296
    return-void
.end method

.method public whitelist validateInput()Z
    .registers 2

    .line 321
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->validateInput()Z

    move-result v0

    return v0
.end method
