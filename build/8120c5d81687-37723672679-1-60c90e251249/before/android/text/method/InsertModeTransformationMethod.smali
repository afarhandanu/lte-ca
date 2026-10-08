.class public Landroid/text/method/InsertModeTransformationMethod;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;,
        Landroid/text/method/InsertModeTransformationMethod$TransformedText;
    }
.end annotation


# instance fields
.field private blacklist mEnd:I

.field private final blacklist mOldTransformationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mSingleLine:Z

.field private blacklist mStart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I
    .registers 1

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I
    .registers 1

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smintersect(IIII)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;->intersect(IIII)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(IIZLandroid/text/method/TransformationMethod;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    .line 93
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    .line 94
    iput-boolean p3, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    .line 95
    iput-object p4, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/text/method/TransformationMethod;)V
    .registers 4

    .line 87
    invoke-direct {p0, p1, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    .line 88
    return-void
.end method

.method private blacklist getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 6

    .line 120
    iget-boolean v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    if-nez v0, :cond_7

    .line 121
    const-string p1, "\n\n"

    return-object p1

    .line 123
    :cond_7
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, "\ufffd"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 125
    nop

    .line 126
    const/4 v1, 0x1

    const/high16 v2, 0x42d80000    # 108.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-double v2, p1

    .line 125
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 128
    new-instance v2, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;

    invoke-direct {v2, p1}, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;-><init>(I)V

    const/4 p1, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    return-object v0
.end method

.method private static blacklist intersect(IIII)Z
    .registers 5

    .line 498
    const/4 v0, 0x0

    if-le p0, p3, :cond_4

    return v0

    .line 499
    :cond_4
    if-ge p1, p2, :cond_7

    return v0

    .line 500
    :cond_7
    if-eq p0, p1, :cond_11

    if-eq p2, p3, :cond_11

    .line 501
    if-ne p0, p3, :cond_e

    return v0

    .line 502
    :cond_e
    if-ne p1, p2, :cond_11

    return v0

    .line 504
    :cond_11
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 205
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 161
    return-void
.end method

.method public blacklist getOldTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 8

    .line 136
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1f

    .line 137
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1d

    .line 139
    check-cast p1, Landroid/text/Spannable;

    .line 140
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    nop

    .line 147
    :cond_1d
    move-object p1, v0

    goto :goto_20

    .line 144
    :cond_1f
    nop

    .line 147
    :goto_20
    invoke-direct {p0, p2}, Landroid/text/method/InsertModeTransformationMethod;->getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 148
    new-instance v0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;-><init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 7

    .line 154
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_a

    .line 155
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 158
    :cond_a
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    .line 166
    iget v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-le p2, v0, :cond_5

    return-void

    .line 167
    :cond_5
    sub-int v0, p4, p3

    .line 171
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-ge p2, v1, :cond_2c

    .line 172
    add-int v1, p2, p3

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-gt v1, v2, :cond_17

    .line 174
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_2c

    .line 176
    :cond_17
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->insertModeHighlightRange()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 179
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_2c

    .line 183
    :cond_2a
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    .line 188
    :cond_2c
    :goto_2c
    add-int/2addr p3, p2

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-gt p3, v1, :cond_37

    .line 190
    iget p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    goto :goto_51

    .line 191
    :cond_37
    iget p3, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-ge p2, p3, :cond_51

    .line 192
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->insertModeHighlightRange()Z

    move-result p3

    if-eqz p3, :cond_4e

    .line 195
    iget p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    goto :goto_51

    .line 199
    :cond_4e
    add-int/2addr p2, p4

    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    .line 202
    :cond_51
    :goto_51
    return-void
.end method

.method public blacklist update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;
    .registers 6

    .line 111
    new-instance v0, Landroid/text/method/InsertModeTransformationMethod;

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-direct {v0, v1, v2, p2, p1}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    return-object v0
.end method
