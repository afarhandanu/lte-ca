.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final greylist-max-o AM:I = 0x0

.field private static final greylist-max-o ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final greylist-max-o ANIM_DURATION_TOUCH:I = 0x3c

.field private static final greylist-max-o COS_30:[F

.field private static final greylist-max-o DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final greylist-max-o DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final greylist-max-o HOURS:I = 0x0

.field private static final greylist-max-o HOURS_INNER:I = 0x2

.field private static final greylist-max-o HOURS_IN_CIRCLE:I = 0xc

.field private static final greylist-max-o HOURS_NUMBERS:[I

.field private static final greylist-max-o HOURS_NUMBERS_24:[I

.field public static final greylist-max-o MINUTES:I = 0x1

.field private static final greylist-max-o MINUTES_IN_CIRCLE:I = 0x3c

.field private static final greylist-max-o MINUTES_NUMBERS:[I

.field private static final greylist-max-o MISSING_COLOR:I = -0xff01

.field private static final greylist-max-o NUM_POSITIONS:I = 0xc

.field private static final greylist-max-o PM:I = 0x1

.field private static final greylist-max-o SELECTOR_CIRCLE:I = 0x0

.field private static final greylist-max-o SELECTOR_DOT:I = 0x1

.field private static final greylist-max-o SELECTOR_LINE:I = 0x2

.field private static final greylist-max-o SIN_30:[F

.field private static final greylist-max-o SNAP_PREFER_30S_MAP:[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final greylist-max-o HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAmOrPm:I

.field private greylist-max-o mCenterDotRadius:I

.field greylist-max-o mChangedDuringTouch:Z

.field private greylist-max-o mCircleRadius:I

.field private greylist-max-o mDisabledAlpha:F

.field private greylist-max-o mHalfwayDist:I

.field private final greylist-max-o mHours12Texts:[Ljava/lang/String;

.field private greylist-max-o mHoursToMinutes:F

.field private greylist-max-o mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final greylist-max-o mInnerHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mInnerTextHours:[Ljava/lang/String;

.field private final greylist-max-o mInnerTextX:[F

.field private final greylist-max-o mInnerTextY:[F

.field private greylist-max-o mInputEnabled:Z

.field private greylist-max-o mIs24HourMode:Z

.field private greylist-max-o mIsOnInnerCircle:Z

.field private greylist-max-o mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private greylist-max-o mMaxDistForOuterNumber:I

.field private greylist-max-o mMinDistForInnerNumber:I

.field private greylist-max-o mMinutesText:[Ljava/lang/String;

.field private final greylist-max-o mMinutesTexts:[Ljava/lang/String;

.field private final greylist-max-o mOuterHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mOuterTextHours:[Ljava/lang/String;

.field private final greylist-max-o mOuterTextX:[[F

.field private final greylist-max-o mOuterTextY:[[F

.field private final greylist-max-o mPaint:[Landroid/graphics/Paint;

.field private final greylist-max-o mPaintBackground:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintCenter:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintSelector:[Landroid/graphics/Paint;

.field private final greylist-max-o mSelectionDegrees:[I

.field private greylist-max-o mSelectorColor:I

.field private greylist-max-o mSelectorDotColor:I

.field private greylist-max-o mSelectorDotRadius:I

.field private final greylist-max-o mSelectorPath:Landroid/graphics/Path;

.field private greylist-max-o mSelectorRadius:I

.field private greylist-max-o mSelectorStroke:I

.field private greylist-max-o mShowHours:Z

.field private final greylist-max-o mTextColor:[Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextInset:[I

.field private final greylist-max-o mTextSize:[I

.field private final greylist-max-o mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;

.field private greylist-max-o mXCenter:I

.field private greylist-max-o mYCenter:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAmOrPm(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHoursToMinutes(Landroid/widget/RadialTimePickerView;)F
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXCenter(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYCenter(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHoursToMinutes(Landroid/widget/RadialTimePickerView;F)V
    .registers 2

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForHour(Landroid/widget/RadialTimePickerView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForMinute(Landroid/widget/RadialTimePickerView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesFromXY(Landroid/widget/RadialTimePickerView;FFZ)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHourForDegrees(Landroid/widget/RadialTimePickerView;IZ)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleForHour(Landroid/widget/RadialTimePickerView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleFromXY(Landroid/widget/RadialTimePickerView;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsnapOnly30s(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 91
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_4e

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 92
    new-array v1, v0, [I

    fill-array-data v1, :array_6a

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 93
    new-array v1, v0, [I

    fill-array-data v1, :array_86

    sput-object v1, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 98
    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 101
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 102
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 109
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 112
    nop

    .line 113
    const/4 v1, 0x0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_2f
    if-ge v1, v0, :cond_4c

    .line 114
    sget-object v4, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v1

    .line 115
    sget-object v4, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v1

    .line 116
    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v2, v4

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 118
    :cond_4c
    return-void

    nop

    :array_4e
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_6a
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_86
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 325
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 326
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 330
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .line 334
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance v0, Landroid/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 134
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 135
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 136
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 137
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 139
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 140
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 141
    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 142
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 146
    new-array v3, v2, [Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 147
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 148
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 150
    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 151
    new-array v2, v1, [I

    aput v0, v2, v3

    aput v1, v2, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 153
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 154
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 156
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 160
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 200
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 966
    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 336
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 339
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010033

    invoke-virtual {p1, p3, p2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 341
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 343
    const-string/jumbo p1, "sans-serif"

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 345
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    aput-object p2, p1, v4

    .line 346
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p1, p1, v4

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 349
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    aput-object p2, p1, v3

    .line 350
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 353
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    aput-object p2, p1, v4

    .line 356
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    aput-object p2, p1, v3

    .line 359
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    aput-object p2, p1, v1

    .line 362
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p1, p1, v1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p1, p1, v1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 365
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 368
    const p2, 0x10503b6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 369
    const p2, 0x10503b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 370
    const p2, 0x10503b5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 371
    const p2, 0x10503ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 373
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const p3, 0x10503bc

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p2, v4

    .line 374
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    aput p3, p2, v3

    .line 375
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const p3, 0x10503bb

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    aput p3, p2, v1

    .line 377
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const p3, 0x10503ba

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p2, v4

    .line 378
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    aput p3, p2, v3

    .line 379
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const p3, 0x10503b9

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    aput p1, p2, v1

    .line 381
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 382
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 383
    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 384
    iput v4, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 387
    new-instance p1, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {p1, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 388
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 390
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_193

    .line 391
    invoke-virtual {p0, v3}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    .line 394
    :cond_193
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 395
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 399
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 400
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 402
    invoke-direct {p0, p2, v4, v4}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 403
    invoke-direct {p0, p1, v4}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 405
    invoke-virtual {p0, v3}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 406
    return-void
.end method

.method private greylist-max-o animatePicker(ZJ)V
    .registers 8

    .line 708
    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 709
    :goto_6
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_21

    .line 711
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_20

    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 712
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 713
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 717
    :cond_20
    return-void

    .line 720
    :cond_21
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 721
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 722
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 723
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 724
    return-void
.end method

.method private static greylist-max-o calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .registers 7

    .line 887
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 888
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result p4

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    add-float/2addr p4, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p4, p0

    sub-float/2addr p3, p4

    .line 890
    const/4 p0, 0x0

    :goto_11
    const/16 p4, 0xc

    if-ge p0, p4, :cond_2a

    .line 891
    sget-object p4, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p2, p4

    aput p4, p5, p0

    .line 892
    sget-object p4, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p3, p4

    aput p4, p6, p0

    .line 890
    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    .line 894
    :cond_2a
    return-void
.end method

.method private greylist-max-o calculatePositionsHours()V
    .registers 12

    .line 856
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 859
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 863
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_46

    .line 864
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    sub-int/2addr v0, v1

    .line 865
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v4, v1, v2

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v6, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v3

    int-to-float v8, v0

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v4 .. v10}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 868
    :cond_46
    return-void
.end method

.method private greylist-max-o calculatePositionsMinutes()V
    .registers 11

    .line 872
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 875
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 877
    return-void
.end method

.method private greylist-max-o drawCenter(Landroid/graphics/Canvas;F)V
    .registers 6

    .line 789
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 790
    iget p2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float p2, p2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 791
    return-void
.end method

.method private greylist-max-o drawCircleBackground(Landroid/graphics/Canvas;)V
    .registers 6

    .line 727
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 728
    return-void
.end method

.method private greylist-max-o drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .registers 6

    .line 731
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int p3, v0

    .line 732
    if-lez p3, :cond_2e

    .line 735
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 736
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 737
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 742
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 743
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 744
    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 745
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 747
    :cond_2e
    return-void
.end method

.method private greylist-max-o drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .registers 19

    .line 751
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v13, 0x0

    aget v1, v1, v13

    int-to-float v2, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v1, v13

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v1, v13

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v1, v13

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v1, v13

    const/4 v14, 0x1

    if-eqz p3, :cond_23

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v1, :cond_23

    move v10, v14

    goto :goto_24

    :cond_23
    move v10, v13

    :goto_24
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v1, v13

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 756
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_68

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 757
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v2, v13

    if-eqz p3, :cond_58

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v2, :cond_58

    move v10, v14

    goto :goto_59

    :cond_58
    move v10, v13

    :goto_59
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v2, v13

    move-object v0, p0

    move/from16 v9, p2

    move/from16 v12, p3

    move v2, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 761
    :cond_68
    return-void
.end method

.method private greylist-max-o drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .registers 6

    .line 764
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v1, p3

    float-to-int p3, v1

    .line 765
    if-lez p3, :cond_2b

    .line 768
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 769
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 770
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 775
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 776
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 777
    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 778
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 780
    :cond_2b
    return-void
.end method

.method private greylist-max-o drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .registers 17

    .line 783
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v7, v2

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v8, v2

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v9, v2

    move/from16 v12, p3

    move-object v0, p0

    move v9, p2

    move/from16 v10, p3

    move v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 786
    return-void
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 21

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    const/4 v5, 0x2

    if-eqz v3, :cond_d

    move v3, v5

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 800
    :goto_e
    iget-object v6, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v6, v6, v3

    .line 801
    iget-object v7, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/2addr v3, v5

    aget v7, v7, v3

    .line 802
    iget-object v8, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v3, v8, v3

    rem-int/lit8 v3, v3, 0x1e

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v3, :cond_24

    move v3, v8

    goto :goto_25

    :cond_24
    move v3, v9

    .line 805
    :goto_25
    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    .line 806
    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v12, v12, v11

    .line 807
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v13, v13, v11

    rem-int/lit8 v13, v13, 0x1e

    if-eqz v13, :cond_37

    goto :goto_38

    :cond_37
    move v8, v9

    .line 810
    :goto_38
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 811
    iget v14, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v14, v14

    iget v15, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 812
    invoke-static {v6, v10, v15}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    sub-float/2addr v14, v6

    .line 813
    int-to-float v6, v7

    int-to-float v7, v12

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 814
    invoke-static {v6, v7, v10}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 815
    iget v10, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v10, v10

    move v15, v5

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v14

    add-float/2addr v10, v4

    .line 816
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    move v5, v11

    move/from16 v16, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v14

    sub-float/2addr v4, v11

    .line 819
    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v11, v11, v16

    .line 820
    iget v12, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 821
    int-to-float v12, v13

    invoke-virtual {v1, v10, v4, v12, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 824
    if-eqz v2, :cond_81

    .line 825
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 826
    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v10, v4, v12, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 830
    :cond_81
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v3, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    .line 831
    cmpl-float v3, v2, v9

    if-lez v3, :cond_9b

    .line 832
    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    .line 833
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {v1, v10, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 839
    :cond_9b
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 840
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 841
    sub-float/2addr v14, v12

    .line 842
    iget v6, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v7, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v7, v7

    mul-double/2addr v7, v2

    double-to-int v7, v7

    add-int/2addr v6, v7

    .line 843
    iget v7, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v8, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v8, v8

    mul-double/2addr v8, v4

    double-to-int v8, v8

    sub-int/2addr v7, v8

    .line 844
    float-to-double v8, v14

    mul-double/2addr v2, v8

    double-to-int v2, v2

    add-int/2addr v6, v2

    int-to-float v3, v6

    .line 845
    mul-double/2addr v8, v4

    double-to-int v2, v8

    sub-int/2addr v7, v2

    int-to-float v4, v7

    .line 848
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v2, v15

    .line 849
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 850
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 851
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    move/from16 v17, v2

    move v2, v0

    move-object v0, v1

    move/from16 v1, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 852
    return-void
.end method

.method private greylist-max-o drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .registers 21

    .line 902
    move-object/from16 v0, p8

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 903
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 906
    move/from16 p2, p11

    int-to-float p2, p2

    const/high16 p3, 0x41f00000    # 30.0f

    div-float/2addr p2, p3

    .line 907
    float-to-int p3, p2

    .line 908
    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    const/16 v1, 0xc

    rem-int/2addr p2, v1

    .line 910
    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_57

    .line 911
    if-eq p3, v3, :cond_23

    if-ne p2, v3, :cond_21

    goto :goto_23

    :cond_21
    move v4, v2

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v4, 0x1

    .line 912
    :goto_24
    if-eqz p12, :cond_2b

    if-nez v4, :cond_2b

    .line 913
    move/from16 v5, p9

    goto :goto_54

    .line 916
    :cond_2b
    nop

    .line 917
    if-eqz p10, :cond_33

    if-eqz v4, :cond_33

    const/16 v4, 0x20

    goto :goto_34

    :cond_33
    move v4, v2

    :goto_34
    const/16 v5, 0x8

    or-int/2addr v4, v5

    .line 918
    invoke-static {v4}, Landroid/util/StateSet;->get(I)[I

    move-result-object v4

    invoke-virtual {p4, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 919
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 920
    move/from16 v5, p9

    invoke-direct {p0, v4, v5}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 922
    aget-object v4, p5, v3

    aget v6, p6, v3

    aget v7, p7, v3

    invoke-virtual {p1, v4, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 910
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 924
    :cond_57
    return-void
.end method

.method private greylist-max-o getDegreesForHour(I)I
    .registers 4

    .line 554
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_b

    .line 555
    if-lt p1, v1, :cond_e

    .line 556
    add-int/lit8 p1, p1, -0xc

    goto :goto_e

    .line 558
    :cond_b
    if-ne p1, v1, :cond_e

    .line 559
    const/4 p1, 0x0

    .line 561
    :cond_e
    :goto_e
    mul-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method private greylist-max-o getDegreesForMinute(I)I
    .registers 2

    .line 595
    mul-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private greylist-max-o getDegreesFromXY(FFZ)I
    .registers 12

    .line 930
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_d

    .line 931
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 932
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    goto :goto_1f

    .line 934
    :cond_d
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 935
    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    .line 936
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v0, v1, v0

    .line 937
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v1, v2

    .line 940
    :goto_1f
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-double v2, p1

    .line 941
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    .line 942
    mul-double v4, v2, v2

    mul-double v6, p1, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 943
    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_57

    if-eqz p3, :cond_3f

    int-to-double v0, v1

    cmpl-double p3, v4, v0

    if-lez p3, :cond_3f

    goto :goto_57

    .line 948
    :cond_3f
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 949
    if-gez p1, :cond_56

    .line 950
    add-int/lit16 p1, p1, 0x168

    return p1

    .line 952
    :cond_56
    return p1

    .line 944
    :cond_57
    :goto_57
    const/4 p1, -0x1

    return p1
.end method

.method private greylist-max-o getHourForDegrees(IZ)I
    .registers 5

    .line 532
    div-int/lit8 p1, p1, 0x1e

    const/16 v0, 0xc

    rem-int/2addr p1, v0

    .line 533
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_15

    .line 536
    if-nez p2, :cond_e

    if-nez p1, :cond_e

    .line 538
    goto :goto_1e

    .line 539
    :cond_e
    if-eqz p2, :cond_1d

    if-eqz p1, :cond_1d

    .line 541
    add-int/lit8 v0, p1, 0xc

    goto :goto_1e

    .line 543
    :cond_15
    iget p2, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1d

    .line 544
    add-int/lit8 v0, p1, 0xc

    goto :goto_1e

    .line 546
    :cond_1d
    move v0, p1

    :goto_1e
    return v0
.end method

.method private greylist-max-o getInnerCircleForHour(I)Z
    .registers 3

    .line 568
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_a

    const/16 v0, 0xc

    if-le p1, v0, :cond_c

    :cond_a
    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private greylist-max-o getInnerCircleFromXY(FF)Z
    .registers 7

    .line 957
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_23

    .line 958
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    .line 959
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    .line 960
    mul-double/2addr v2, v2

    mul-double/2addr p1, p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 961
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v2, v0

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    .line 963
    :cond_23
    return v1
.end method

.method private greylist-max-o getMinuteForDegrees(I)I
    .registers 2

    .line 591
    div-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private greylist-max-o getMultipliedAlpha(II)I
    .registers 7

    .line 794
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-double v0, p1

    int-to-double p1, p2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr p1, v2

    mul-double/2addr v0, p1

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method private greylist-max-o handleTouchInput(FFZZ)Z
    .registers 9

    .line 1003
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    .line 1004
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p1

    .line 1005
    const/4 p2, -0x1

    if-ne p1, p2, :cond_d

    .line 1006
    return v1

    .line 1010
    :cond_d
    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v2, 0x3c

    invoke-direct {p0, p2, v2, v3}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1016
    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_3a

    .line 1017
    invoke-static {p1, v1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    .line 1018
    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne p2, v0, :cond_2c

    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget p2, p2, v1

    if-eq p2, p1, :cond_2a

    goto :goto_2c

    :cond_2a
    move p2, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move p2, v2

    .line 1020
    :goto_2d
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1021
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput p1, v0, v1

    .line 1022
    nop

    .line 1023
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result p1

    .line 1024
    move v0, v1

    goto :goto_53

    .line 1025
    :cond_3a
    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    .line 1026
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget p2, p2, v2

    if-eq p2, p1, :cond_48

    move p2, v2

    goto :goto_49

    :cond_48
    move p2, v1

    .line 1027
    :goto_49
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput p1, v0, v2

    .line 1028
    nop

    .line 1029
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    move v0, v2

    .line 1032
    :goto_53
    if-nez p2, :cond_5b

    if-nez p3, :cond_5b

    if-eqz p4, :cond_5a

    goto :goto_5b

    .line 1046
    :cond_5a
    return v1

    .line 1034
    :cond_5b
    :goto_5b
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_64

    .line 1035
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v1, v0, p1, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1039
    :cond_64
    if-nez p2, :cond_68

    if-eqz p3, :cond_6f

    .line 1040
    :cond_68
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1041
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1043
    :cond_6f
    return v2
.end method

.method private greylist-max-o initData()V
    .registers 2

    .line 640
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_d

    .line 641
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 642
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_15

    .line 644
    :cond_d
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 645
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 648
    :goto_15
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 649
    return-void
.end method

.method private greylist-max-o initHoursAndMinutesText()V
    .registers 6

    .line 631
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_5c

    .line 632
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 633
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%02d"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 634
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 635
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    :cond_5c
    return-void
.end method

.method private static greylist-max-o preparePrefer30sMap()V
    .registers 6

    .line 246
    nop

    .line 248
    nop

    .line 252
    nop

    .line 254
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    move v4, v1

    move v3, v2

    move v2, v0

    :goto_a
    const/16 v5, 0x169

    if-ge v0, v5, :cond_2b

    .line 256
    sget-object v5, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v2, v5, v0

    .line 259
    if-ne v4, v3, :cond_26

    .line 260
    add-int/lit8 v2, v2, 0x6

    .line 261
    const/16 v3, 0x168

    if-ne v2, v3, :cond_1c

    .line 262
    const/4 v3, 0x7

    goto :goto_24

    .line 263
    :cond_1c
    rem-int/lit8 v3, v2, 0x1e

    if-nez v3, :cond_23

    .line 264
    const/16 v3, 0xe

    goto :goto_24

    .line 266
    :cond_23
    const/4 v3, 0x4

    .line 268
    :goto_24
    move v4, v1

    goto :goto_28

    .line 270
    :cond_26
    add-int/lit8 v4, v4, 0x1

    .line 254
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 273
    :cond_2b
    return-void
.end method

.method private greylist-max-o setCurrentHourInternal(IZZ)V
    .registers 8

    .line 501
    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 502
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 505
    if-eqz p1, :cond_14

    rem-int/lit8 v0, p1, 0x18

    const/16 v1, 0xc

    if-ge v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    :goto_14
    move v0, v2

    .line 506
    :goto_15
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v1

    .line 507
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v3, v0, :cond_21

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v3, v1, :cond_2d

    .line 508
    :cond_21
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 509
    iput-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 511
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 512
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 515
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 517
    if-eqz p2, :cond_3b

    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz p2, :cond_3b

    .line 518
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {p2, v2, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 520
    :cond_3b
    return-void
.end method

.method private greylist-max-o setCurrentMinuteInternal(IZ)V
    .registers 6

    .line 576
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 578
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 580
    if-eqz p2, :cond_18

    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz p2, :cond_18

    .line 581
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v0, 0x0

    invoke-interface {p2, v2, p1, v0}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 583
    :cond_18
    return-void
.end method

.method private greylist-max-o showPicker(ZZ)V
    .registers 5

    .line 685
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_5

    .line 686
    return-void

    .line 689
    :cond_5
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 691
    if-eqz p2, :cond_f

    .line 692
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_2b

    .line 695
    :cond_f
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_23

    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 696
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 697
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 699
    :cond_23
    if-eqz p1, :cond_27

    const/4 p1, 0x0

    goto :goto_29

    :cond_27
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_29
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 702
    :goto_2b
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 703
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 704
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 705
    return-void
.end method

.method private static greylist-max-o snapOnly30s(II)I
    .registers 5

    .line 300
    div-int/lit8 v0, p0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    .line 301
    add-int/lit8 v1, v0, 0x1e

    .line 302
    const/4 v2, 0x1

    if-ne p1, v2, :cond_a

    .line 303
    goto :goto_1a

    .line 304
    :cond_a
    const/4 v2, -0x1

    if-ne p1, v2, :cond_12

    .line 305
    if-ne p0, v0, :cond_11

    .line 306
    add-int/lit8 v0, v0, -0x1e

    .line 308
    :cond_11
    goto :goto_1b

    .line 310
    :cond_12
    sub-int p1, p0, v0

    sub-int p0, v1, p0

    if-ge p1, p0, :cond_19

    .line 311
    goto :goto_1b

    .line 313
    :cond_19
    nop

    .line 316
    :goto_1a
    move v0, v1

    :goto_1b
    return v0
.end method

.method private static greylist-max-o snapPrefer30s(I)I
    .registers 2

    .line 283
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_6

    .line 284
    const/4 p0, -0x1

    return p0

    .line 286
    :cond_6
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method greylist-max-o applyAttributes(Landroid/util/AttributeSet;II)V
    .registers 11

    .line 409
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 410
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 412
    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 415
    const/4 p1, 0x3

    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 417
    const/16 p2, 0x9

    invoke-virtual {v4, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 419
    iget-object p3, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v2, -0xff01

    if-nez p1, :cond_2e

    .line 420
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_2f

    :cond_2e
    nop

    :goto_2f
    const/4 v3, 0x0

    aput-object p1, p3, v3

    .line 421
    iget-object p1, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    if-nez p2, :cond_3b

    .line 422
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_3c

    :cond_3b
    nop

    :goto_3c
    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 423
    iget-object p1, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    iget-object p2, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object p2, p2, v3

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 426
    const/4 p1, 0x5

    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 429
    const/16 p2, 0x28

    if-eqz p1, :cond_5a

    .line 430
    invoke-static {p2}, Landroid/util/StateSet;->get(I)[I

    move-result-object p3

    .line 432
    invoke-virtual {p1, p3, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 434
    goto :goto_5b

    .line 435
    :cond_5a
    nop

    .line 438
    :goto_5b
    iget-object p1, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    invoke-static {p2}, Landroid/util/StateSet;->get(I)[I

    move-result-object p1

    .line 443
    iput v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 444
    iget-object p2, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object p2, p2, v3

    invoke-virtual {p2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 446
    iget-object p1, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 447
    const p2, 0x106046a

    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 446
    const/4 p3, 0x4

    invoke-virtual {v4, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    return-void
.end method

.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1052
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1053
    const/4 p1, 0x1

    return p1

    .line 1055
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o getAmOrPm()I
    .registers 2

    .line 618
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public greylist-max-o getCurrentHour()I
    .registers 3

    .line 528
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getCurrentItemShowing()I
    .registers 2

    .line 476
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o getCurrentMinute()I
    .registers 3

    .line 587
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o initialize(IIZ)V
    .registers 5

    .line 453
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_9

    .line 454
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 455
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 458
    :cond_9
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p3}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 459
    invoke-direct {p0, p2, p3}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 460
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 673
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 675
    :goto_9
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 677
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 678
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 679
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 680
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 681
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 682
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 653
    if-nez p1, :cond_3

    .line 654
    return-void

    .line 657
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 658
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 659
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget p3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 661
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object p3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget p3, p3, p2

    sub-int/2addr p1, p3

    iget p3, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 662
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object p3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 p4, 0x0

    aget p3, p3, p4

    sub-int/2addr p1, p3

    iget p3, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 663
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object p3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget p3, p3, p4

    iget-object p4, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget p4, p4, p2

    add-int/2addr p3, p4

    div-int/2addr p3, p2

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 665
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 666
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 668
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 669
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 6

    .line 1066
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1067
    const/4 p1, 0x0

    return-object p1

    .line 1069
    :cond_8
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .line 1071
    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 1072
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1073
    const/16 p1, 0x3e8

    goto :goto_2b

    .line 1074
    :cond_29
    const/16 p1, 0x3ea

    .line 1075
    :goto_2b
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    .line 1078
    :cond_34
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 970
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 971
    return v1

    .line 974
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 975
    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_11

    if-nez v0, :cond_37

    .line 978
    :cond_11
    nop

    .line 979
    nop

    .line 981
    const/4 v2, 0x0

    if-nez v0, :cond_19

    .line 983
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_25

    .line 984
    :cond_19
    if-ne v0, v1, :cond_25

    .line 985
    nop

    .line 989
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v0, :cond_23

    .line 990
    move v0, v1

    move v2, v0

    goto :goto_26

    .line 989
    :cond_23
    move v0, v1

    goto :goto_26

    .line 994
    :cond_25
    :goto_25
    move v0, v2

    :goto_26
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 994
    invoke-direct {p0, v4, p1, v2, v0}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 998
    :cond_37
    return v1
.end method

.method public greylist-max-o setAmOrPm(I)Z
    .registers 3

    .line 607
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_15

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 611
    :cond_9
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 612
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 613
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 614
    const/4 p1, 0x1

    return p1

    .line 608
    :cond_15
    :goto_15
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o setCurrentHour(I)V
    .registers 4

    .line 489
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 490
    return-void
.end method

.method public greylist-max-o setCurrentItemShowing(IZ)V
    .registers 4

    .line 463
    packed-switch p1, :pswitch_data_26

    .line 471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClockView does not support showing item "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RadialTimePickerView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 468
    :pswitch_1c
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    .line 469
    goto :goto_24

    .line 465
    :pswitch_20
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    .line 466
    nop

    .line 473
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method public greylist-max-o setCurrentMinute(I)V
    .registers 3

    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 573
    return-void
.end method

.method public greylist-max-o setInputEnabled(Z)V
    .registers 2

    .line 1059
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1060
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1061
    return-void
.end method

.method public greylist-max-o setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .registers 2

    .line 480
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 481
    return-void
.end method

.method public greylist-max-o showHours(Z)V
    .registers 3

    .line 622
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 623
    return-void
.end method

.method public greylist-max-o showMinutes(Z)V
    .registers 3

    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 627
    return-void
.end method
