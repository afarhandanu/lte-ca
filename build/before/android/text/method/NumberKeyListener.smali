.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final greylist-max-o DATE_TIME_FORMAT_SYMBOLS:Ljava/lang/String; = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

.field private static final greylist-max-o SINGLE_QUOTE:C = '\''


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method static greylist-max-o addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 228
    return v0

    .line 230
    :cond_4
    invoke-static {p1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    .line 231
    move v1, v0

    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_33

    .line 232
    move v2, v0

    :goto_11
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 233
    aget-object v3, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 234
    invoke-static {v3}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 235
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 237
    :cond_2f
    return v0

    .line 231
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 241
    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method static greylist-max-o addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 154
    return v0

    .line 156
    :cond_4
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p1

    .line 157
    move v1, v0

    :goto_d
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2b

    .line 158
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1b

    .line 159
    return v0

    .line 161
    :cond_1b
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 163
    :cond_2b
    return v3
.end method

.method static greylist-max-o addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 176
    return v0

    .line 178
    :cond_4
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    nop

    .line 180
    const/4 p2, 0x1

    move v2, p2

    move v1, v0

    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4c

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 182
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 183
    return v0

    .line 184
    :cond_1d
    const/16 v4, 0x27

    if-ne v3, v4, :cond_2f

    .line 185
    nop

    .line 188
    xor-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_49

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_2f

    .line 189
    goto :goto_49

    .line 193
    :cond_2f
    if-eqz v2, :cond_42

    .line 194
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_39

    .line 196
    goto :goto_49

    .line 197
    :cond_39
    const-string v4, "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_42

    .line 199
    return v0

    .line 204
    :cond_42
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 206
    :cond_4c
    return p2
.end method

.method static greylist-max-o addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 214
    aget-object v2, p2, v1

    invoke-static {p0, p1, v2, p3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 216
    if-nez v2, :cond_e

    .line 217
    return v0

    .line 213
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method static greylist-max-o collectionToArray(Ljava/util/Collection;)[C
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 247
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 248
    nop

    .line 249
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 250
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    .line 251
    move v1, v3

    goto :goto_c

    .line 252
    :cond_22
    return-object v0
.end method

.method protected static whitelist ok([CC)Z
    .registers 5

    .line 95
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_d

    .line 96
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_a

    .line 97
    return v1

    .line 95
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 101
    :cond_d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9

    .line 58
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object p4

    .line 59
    nop

    .line 62
    move p5, p2

    :goto_6
    if-ge p5, p3, :cond_16

    .line 63
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    invoke-static {p4, p6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result p6

    if-nez p6, :cond_13

    .line 64
    goto :goto_16

    .line 62
    :cond_13
    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    .line 68
    :cond_16
    :goto_16
    if-ne p5, p3, :cond_1a

    .line 70
    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_1a
    sub-int p6, p3, p2

    const/4 v0, 0x1

    if-ne p6, v0, :cond_22

    .line 75
    const-string p1, ""

    return-object p1

    .line 78
    :cond_22
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 80
    sub-int/2addr p5, p2

    .line 81
    nop

    .line 83
    nop

    .line 85
    sub-int/2addr p6, v0

    :goto_2b
    if-lt p6, p5, :cond_3f

    .line 86
    invoke-interface {p1, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p4, p2}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 87
    add-int/lit8 p2, p6, 0x1

    invoke-virtual {v1, p6, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 85
    :cond_3c
    add-int/lit8 p6, p6, -0x1

    goto :goto_2b

    .line 91
    :cond_3f
    return-object v1
.end method

.method protected abstract whitelist getAcceptedChars()[C
.end method

.method protected whitelist lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .registers 4

    .line 53
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result p1

    return p1
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    .line 110
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 111
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 117
    const/4 v1, 0x0

    if-ltz v2, :cond_15

    if-gez v0, :cond_1b

    .line 118
    :cond_15
    nop

    .line 119
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v0, v1

    move v2, v0

    .line 122
    :cond_1b
    if-eqz p4, :cond_22

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    goto :goto_23

    :cond_22
    move v3, v1

    .line 123
    :goto_23
    if-eqz p4, :cond_29

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 124
    :cond_29
    const/4 v4, 0x1

    if-nez v1, :cond_3f

    .line 125
    if-eqz v3, :cond_5d

    .line 126
    if-eq v2, v0, :cond_33

    .line 127
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 130
    :cond_33
    int-to-char p1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 132
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 133
    return v4

    .line 135
    :cond_3f
    const/16 v5, 0x30

    if-ne v3, v5, :cond_5d

    if-ne v1, v4, :cond_5d

    .line 138
    if-ne v2, v0, :cond_5d

    if-lez v0, :cond_5d

    sub-int/2addr v2, v4

    .line 139
    invoke-interface {p2, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5d

    .line 140
    const/16 p1, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 141
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 142
    return v4

    .line 146
    :cond_5d
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
