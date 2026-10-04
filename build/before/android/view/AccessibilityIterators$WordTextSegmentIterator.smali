.class Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WordTextSegmentIterator"
.end annotation


# static fields
.field private static greylist-max-o sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 3

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators-IA;)V

    .line 181
    return-void
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .registers 2

    .line 173
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v0, :cond_b

    .line 174
    new-instance v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    .line 176
    :cond_b
    sget-object p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    return-object p0
.end method

.method private greylist-max-o isEndBoundary(I)Z
    .registers 3

    .line 246
    if-lez p1, :cond_1a

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_18

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result p1

    if-nez p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 246
    :goto_1b
    return p1
.end method

.method private greylist-max-o isLetterOrDigit(I)Z
    .registers 3

    .line 251
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 252
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 253
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p1

    return p1

    .line 255
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o isStartBoundary(I)Z
    .registers 3

    .line 241
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    sub-int/2addr p1, v0

    .line 242
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result p1

    if-nez p1, :cond_11

    :cond_10
    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 241
    :goto_12
    return v0
.end method


# virtual methods
.method public greylist-max-o following(I)[I
    .registers 5

    .line 190
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 192
    return-object v1

    .line 194
    :cond_a
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_13

    .line 195
    return-object v1

    .line 197
    :cond_13
    nop

    .line 198
    if-gez p1, :cond_17

    .line 199
    const/4 p1, 0x0

    .line 201
    :cond_17
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_2d

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 202
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    .line 203
    if-ne p1, v2, :cond_17

    .line 204
    return-object v1

    .line 207
    :cond_2d
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 208
    if-eq v0, v2, :cond_41

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_41

    .line 211
    :cond_3c
    invoke-virtual {p0, p1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1

    .line 209
    :cond_41
    :goto_41
    return-object v1
.end method

.method protected greylist-max-o onLocaleChanged(Ljava/util/Locale;)V
    .registers 2

    .line 185
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    .line 186
    return-void
.end method

.method public greylist-max-o preceding(I)[I
    .registers 5

    .line 216
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 217
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 218
    return-object v1

    .line 220
    :cond_a
    if-gtz p1, :cond_d

    .line 221
    return-object v1

    .line 223
    :cond_d
    nop

    .line 224
    if-le p1, v0, :cond_11

    .line 225
    move p1, v0

    .line 227
    :cond_11
    const/4 v0, -0x1

    if-lez p1, :cond_2b

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 228
    iget-object v2, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    .line 229
    if-ne p1, v0, :cond_11

    .line 230
    return-object v1

    .line 233
    :cond_2b
    iget-object v2, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    .line 234
    if-eq v2, v0, :cond_3f

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_3f

    .line 237
    :cond_3a
    invoke-virtual {p0, v2, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1

    .line 235
    :cond_3f
    :goto_3f
    return-object v1
.end method
