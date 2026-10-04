.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;,
        Landroid/widget/SpellChecker$SentenceIteratorWrapper;,
        Landroid/widget/SpellChecker$RemoveReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o AVERAGE_WORD_LENGTH:I = 0x7

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final blacklist MAX_SENTENCE_LENGTH:I = 0x15e

.field private static final greylist-max-o SPELL_PAUSE_DURATION:I = 0x190

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o USE_SPAN_RANGE:I = -0x1

.field public static final greylist-max-o WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final greylist-max-o mCookie:I

.field private greylist-max-o mCurrentLocale:Ljava/util/Locale;

.field private greylist-max-o mIds:[I

.field private greylist-max-o mLength:I

.field private blacklist mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

.field private greylist-max-o mSpanSequenceCounter:I

.field private greylist-max-o mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field greylist-max-o mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private greylist-max-o mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private greylist-max-o mSpellRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIds(Landroid/widget/SpellChecker;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLength(Landroid/widget/SpellChecker;)I
    .registers 1

    iget p0, p0, Landroid/widget/SpellChecker;->mLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpellCheckSpans(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpellParsers(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddSpellCheckSpan(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectSentenceBoundary(Landroid/widget/SpellChecker;Ljava/lang/CharSequence;II)Landroid/util/Range;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mspellCheck(Landroid/widget/SpellChecker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 88
    iput v0, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 102
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 106
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 107
    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/text/style/SpellCheckSpan;

    iput-object p1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 109
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 112
    return-void
.end method

.method private greylist-max-o addSpellCheckSpan(Landroid/text/Editable;II)V
    .registers 7

    .line 198
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 199
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    .line 200
    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 201
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 202
    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget p2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput p2, p1, v0

    .line 203
    return-void
.end method

.method private greylist-max-o createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .registers 10

    .line 544
    invoke-interface {p1, p3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 545
    invoke-interface {p1, p3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 546
    if-ltz v0, :cond_88

    if-gt p3, v0, :cond_e

    goto/16 :goto_88

    .line 551
    :cond_e
    const/4 v1, -0x1

    if-eq p4, v1, :cond_17

    if-eq p5, v1, :cond_17

    .line 552
    add-int/2addr v0, p4

    .line 553
    add-int p3, v0, p5

    goto :goto_19

    .line 555
    :cond_17
    nop

    .line 556
    nop

    .line 559
    :goto_19
    invoke-virtual {p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result p4

    .line 561
    const/4 p5, 0x0

    if-lez p4, :cond_2e

    .line 562
    new-array v1, p4, [Ljava/lang/String;

    .line 563
    move v2, p5

    :goto_23
    if-ge v2, p4, :cond_37

    .line 564
    invoke-virtual {p2, v2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 567
    :cond_2e
    const-class p4, Ljava/lang/String;

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, [Ljava/lang/String;

    .line 570
    :cond_37
    invoke-virtual {p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result p2

    .line 571
    nop

    .line 572
    and-int/lit8 p4, p2, 0x10

    const/4 v2, 0x1

    if-nez p4, :cond_43

    .line 573
    move p4, v2

    goto :goto_44

    .line 572
    :cond_43
    move p4, p5

    .line 575
    :goto_44
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4a

    .line 576
    or-int/lit8 p4, p4, 0x2

    .line 578
    :cond_4a
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_50

    .line 579
    or-int/lit8 p4, p4, 0x8

    .line 581
    :cond_50
    new-instance p2, Landroid/text/style/SuggestionSpan;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 582
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3, v1, p4}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 583
    sget-object p4, Landroid/widget/SpellChecker$RemoveReason;->REPLACE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {p1, v0, p3, p4}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result p4

    .line 584
    if-nez p4, :cond_6c

    iget-object p4, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result p4

    if-eqz p4, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, p5

    .line 585
    :goto_6d
    if-eqz v2, :cond_75

    new-instance p4, Landroid/text/SpannedString;

    invoke-direct {p4, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_76

    :cond_75
    const/4 p4, 0x0

    .line 586
    :goto_76
    const/16 v1, 0x21

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 587
    if-eqz v2, :cond_82

    .line 588
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4, v0, p3}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    .line 591
    :cond_82
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p3, p5}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 592
    return-void

    .line 547
    :cond_88
    :goto_88
    return-void
.end method

.method private blacklist detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 796
    add-int/lit16 v0, p2, -0x15e

    .line 797
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 v2, p2, -0x2bc

    .line 798
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 796
    invoke-static {p1, v0, v1}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 799
    add-int/lit16 v1, p2, 0x2bc

    .line 800
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit16 v2, p2, 0x41a

    .line 801
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 799
    invoke-static {p1, v1, v2}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 806
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 809
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v0, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, p2

    goto :goto_3a

    .line 810
    :cond_34
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v0, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->preceding(I)I

    move-result v0

    .line 811
    :goto_3a
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, v0}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result v2

    .line 812
    const/4 v3, -0x1

    if-ne v2, v3, :cond_44

    .line 813
    goto :goto_45

    .line 812
    :cond_44
    move v1, v2

    .line 821
    :goto_45
    sub-int v2, v1, v0

    const/16 v4, 0x15e

    if-gt v2, v4, :cond_5d

    .line 823
    :goto_4b
    if-ge v1, p3, :cond_72

    .line 824
    iget-object p1, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {p1, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result p1

    .line 825
    if-eq p1, v3, :cond_72

    sub-int p2, p1, v0

    if-le p2, v4, :cond_5a

    .line 827
    goto :goto_72

    .line 829
    :cond_5a
    nop

    .line 830
    move v1, p1

    goto :goto_4b

    .line 845
    :cond_5d
    sub-int p3, v1, p2

    .line 846
    if-le p3, v4, :cond_6c

    .line 847
    add-int/lit16 p3, p2, 0x15e

    invoke-static {p1, p3, v1}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 849
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_72

    .line 851
    :cond_6c
    add-int/lit16 p2, v1, -0x15e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 855
    :cond_72
    :goto_72
    new-instance p1, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method private static blacklist findSeparator(Ljava/lang/CharSequence;II)I
    .registers 5

    .line 872
    if-ge p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 873
    :goto_5
    nop

    :goto_6
    if-eq p1, p2, :cond_15

    .line 874
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 875
    return p1

    .line 873
    :cond_13
    add-int/2addr p1, v0

    goto :goto_6

    .line 878
    :cond_15
    return p2
.end method

.method public static greylist-max-o haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .registers 5

    .line 884
    if-eq p4, p1, :cond_6

    if-eq p3, p2, :cond_6

    .line 885
    const/4 p0, 0x1

    goto :goto_25

    .line 889
    :cond_6
    if-ne p4, p1, :cond_17

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p4

    if-ge p1, p4, :cond_17

    .line 890
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 891
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    .line 898
    goto :goto_25

    :cond_17
    if-ne p3, p2, :cond_24

    if-lez p2, :cond_24

    .line 899
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 900
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    .line 907
    goto :goto_25

    .line 911
    :cond_24
    const/4 p0, 0x0

    .line 913
    :goto_25
    return p0
.end method

.method private static blacklist isSeparator(I)Z
    .registers 3

    .line 358
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    .line 359
    const/4 v0, 0x1

    shl-int p0, v0, p0

    const v1, 0x61707000

    and-int/2addr p0, v1

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o isSessionActive()Z
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o nextSpellCheckSpanIndex()I
    .registers 4

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v1, v2, :cond_10

    .line 187
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v1

    if-gez v2, :cond_d

    return v1

    .line 186
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 190
    :cond_10
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 191
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v2, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v2}, Landroid/text/style/SpellCheckSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 193
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 194
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .registers 14

    .line 372
    const/4 v0, 0x0

    if-eqz p1, :cond_a7

    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v1

    iget v2, p0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v1, v2, :cond_d

    goto/16 :goto_a7

    .line 375
    :cond_d
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/text/Editable;

    .line 376
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v1

    .line 377
    const/4 v2, 0x0

    move v4, v2

    :goto_1c
    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v4, v5, :cond_a6

    .line 378
    iget-object v5, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v5, v5, v4

    if-ne v1, v5, :cond_9b

    .line 379
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v5, v1, v4

    .line 380
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 381
    if-gez v1, :cond_31

    .line 383
    return-object v0

    .line 386
    :cond_31
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v4

    .line 387
    and-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    if-lez v6, :cond_3c

    move v6, v7

    goto :goto_3d

    :cond_3c
    move v6, v2

    .line 389
    :goto_3d
    and-int/lit8 v8, v4, 0x2

    if-lez v8, :cond_43

    move v8, v7

    goto :goto_44

    :cond_43
    move v8, v2

    .line 391
    :goto_44
    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_49

    move v2, v7

    .line 396
    :cond_49
    add-int v4, v1, p2

    add-int v7, v4, p3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v7, v9, :cond_54

    .line 397
    return-object v5

    .line 401
    :cond_54
    if-nez v6, :cond_67

    if-nez v8, :cond_5f

    if-eqz v2, :cond_5b

    goto :goto_5f

    :cond_5b
    move-object p1, p0

    move v6, p2

    move p2, p3

    goto :goto_6a

    .line 402
    :cond_5f
    :goto_5f
    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    goto :goto_9a

    .line 401
    :cond_67
    move-object p1, p0

    move v6, p2

    move p2, p3

    .line 408
    :goto_6a
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 411
    const/4 v2, -0x1

    if-eq v6, v2, :cond_75

    if-eq p2, v2, :cond_75

    .line 412
    nop

    .line 413
    goto :goto_78

    .line 415
    :cond_75
    nop

    .line 416
    move v7, p3

    move v4, v1

    .line 418
    :goto_78
    if-ltz v1, :cond_9a

    if-le p3, v1, :cond_9a

    if-le v7, v4, :cond_9a

    .line 420
    iget-object p2, p1, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result p2

    .line 422
    if-eqz p2, :cond_8b

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 423
    :cond_8b
    sget-object p3, Landroid/widget/SpellChecker$RemoveReason;->OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v3, v4, v7, p3}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result p3

    .line 425
    if-eqz p2, :cond_9a

    if-eqz p3, :cond_9a

    .line 426
    iget-object p1, p1, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v4, v7}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    .line 431
    :cond_9a
    :goto_9a
    return-object v5

    .line 377
    :cond_9b
    move v6, p2

    move p2, p3

    move-object p3, p1

    move-object p1, p0

    add-int/lit8 v4, v4, 0x1

    move-object p1, p3

    move p3, p2

    move p2, v6

    goto/16 :goto_1c

    .line 434
    :cond_a6
    return-object v0

    .line 373
    :cond_a7
    :goto_a7
    return-object v0
.end method

.method private static blacklist removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z
    .registers 9

    .line 451
    nop

    .line 452
    const-class p3, Landroid/text/style/SuggestionSpan;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/SuggestionSpan;

    .line 453
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v1, v0, :cond_2b

    aget-object v3, p3, v1

    .line 454
    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 455
    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_28

    .line 456
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0xa

    if-eqz v4, :cond_28

    .line 462
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 463
    const/4 v2, 0x1

    .line 453
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 466
    :cond_2b
    return v2
.end method

.method private blacklist roundUpToWordStart(Ljava/lang/CharSequence;II)I
    .registers 5

    .line 859
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 860
    return p2

    .line 862
    :cond_b
    invoke-static {p1, p2, p3}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result p1

    .line 863
    if-eq p1, p3, :cond_13

    add-int/lit8 p3, p1, 0x1

    :cond_13
    return p3
.end method

.method private greylist-max-o scheduleNewSpellCheck()V
    .registers 5

    .line 519
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 520
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    goto :goto_13

    .line 534
    :cond_c
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 537
    :goto_13
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    return-void
.end method

.method private greylist-max-o setLocale(Ljava/util/Locale;)V
    .registers 3

    .line 148
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 150
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 152
    if-eqz p1, :cond_12

    .line 154
    new-instance v0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    .line 155
    invoke-static {p1}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;-><init>(Ljava/text/BreakIterator;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    .line 159
    :cond_12
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 160
    return-void
.end method

.method private greylist-max-o spellCheck()V
    .registers 2

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    .line 284
    return-void
.end method

.method private blacklist spellCheck(Z)V
    .registers 16

    .line 287
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v0, :cond_5

    return-void

    .line 289
    :cond_5
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/text/Editable;

    .line 290
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 291
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 293
    iget v8, p0, Landroid/widget/SpellChecker;->mLength:I

    new-array v9, v8, [Landroid/view/textservice/TextInfo;

    .line 294
    nop

    .line 302
    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_1e
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v11, v1, :cond_84

    .line 303
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v11

    .line 304
    iget-object v3, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v3, v3, v11

    if-ltz v3, :cond_81

    invoke-virtual {v1}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_81

    .line 306
    :cond_33
    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 307
    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 316
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v0, v5, :cond_4e

    iget-object v13, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 318
    invoke-static {v2, v5}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 317
    invoke-static {v13, v5}, Landroid/text/method/WordIterator;->isMidWordPunctuation(Ljava/util/Locale;I)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 319
    move v5, v10

    goto :goto_66

    .line 320
    :cond_4e
    if-le v7, v3, :cond_65

    if-le v0, v4, :cond_53

    goto :goto_65

    .line 328
    :cond_53
    if-ne v0, v4, :cond_63

    if-lez v0, :cond_63

    .line 330
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_63

    move v5, v6

    goto :goto_66

    :cond_63
    move v5, v10

    goto :goto_66

    .line 324
    :cond_65
    :goto_65
    move v5, v6

    .line 332
    :goto_66
    if-ltz v3, :cond_81

    if-le v4, v3, :cond_81

    if-nez p1, :cond_6e

    if-eqz v5, :cond_81

    .line 333
    :cond_6e
    invoke-virtual {v1, v6}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 334
    new-instance v1, Landroid/view/textservice/TextInfo;

    iget v5, p0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v6, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v6, v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 335
    add-int/lit8 v3, v12, 0x1

    aput-object v1, v9, v12

    move v12, v3

    .line 302
    :cond_81
    :goto_81
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    .line 345
    :cond_84
    if-lez v12, :cond_94

    .line 346
    if-ge v12, v8, :cond_8e

    .line 347
    new-array p1, v12, [Landroid/view/textservice/TextInfo;

    .line 348
    invoke-static {v9, v10, p1, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    move-object v9, p1

    .line 352
    :cond_8e
    iget-object p1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v0, 0x5

    invoke-virtual {p1, v9, v0}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    .line 355
    :cond_94
    return-void
.end method


# virtual methods
.method public greylist-max-o closeSession()V
    .registers 4

    .line 171
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 175
    :cond_9
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    .line 176
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    .line 177
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 180
    :cond_19
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    .line 181
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 183
    :cond_24
    return-void
.end method

.method public whitelist onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 11

    .line 485
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 486
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_3e

    .line 487
    aget-object v3, p1, v2

    .line 488
    if-nez v3, :cond_12

    .line 489
    goto :goto_3b

    .line 491
    :cond_12
    nop

    .line 492
    const/4 v4, 0x0

    move v5, v1

    :goto_15
    invoke-virtual {v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v6

    if-ge v5, v6, :cond_36

    .line 493
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v6

    .line 494
    if-nez v6, :cond_22

    .line 495
    goto :goto_33

    .line 497
    :cond_22
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    .line 498
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    .line 499
    invoke-direct {p0, v6, v7, v8}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v6

    .line 501
    if-nez v4, :cond_33

    if-eqz v6, :cond_33

    .line 504
    move-object v4, v6

    .line 492
    :cond_33
    :goto_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 507
    :cond_36
    if-eqz v4, :cond_3b

    .line 509
    invoke-interface {v0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 486
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 512
    :cond_3e
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 513
    return-void
.end method

.method public whitelist onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 6

    .line 471
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 472
    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 473
    aget-object v2, p1, v1

    .line 474
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_18

    .line 477
    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 472
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 480
    :cond_1b
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 481
    return-void
.end method

.method blacklist onPerformSpellCheck()V
    .registers 4

    .line 222
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 226
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    .line 227
    return-void
.end method

.method public greylist-max-o onSelectionChanged()V
    .registers 1

    .line 216
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    .line 217
    return-void
.end method

.method public greylist-max-o onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .registers 4

    .line 207
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_14

    .line 208
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_11

    .line 209
    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 210
    return-void

    .line 207
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_14
    return-void
.end method

.method greylist-max-o resetSession()V
    .registers 5

    .line 115
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 117
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextServicesManagerForUser()Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 118
    iget-object v0, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 121
    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_56

    .line 125
    :cond_2d
    nop

    .line 129
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;-><init>()V

    iget-object v1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v0

    .line 131
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    move-result-object v0

    .line 133
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 134
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v0, v2, p0}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    goto :goto_59

    .line 123
    :cond_56
    :goto_56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 138
    :goto_59
    const/4 v0, 0x0

    move v1, v0

    :goto_5b
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v1, v2, :cond_67

    .line 139
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 141
    :cond_67
    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 144
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 145
    return-void
.end method

.method public greylist-max-o spellCheck(II)V
    .registers 4

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    .line 231
    return-void
.end method

.method public blacklist spellCheck(IIZ)V
    .registers 9

    .line 241
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v0

    .line 242
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    .line 243
    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v3, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_2f

    .line 249
    :cond_1a
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 250
    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    move v0, v2

    .line 251
    :goto_29
    if-eq v1, v0, :cond_3e

    .line 253
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_3e

    .line 244
    :cond_2f
    :goto_2f
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 246
    nop

    .line 247
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    move p1, v2

    .line 257
    :cond_3e
    :goto_3e
    if-nez v1, :cond_41

    return-void

    .line 260
    :cond_41
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    .line 261
    move v1, v2

    :goto_45
    if-ge v1, v0, :cond_58

    .line 262
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v3, v3, v1

    .line 263
    invoke-virtual {v3}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 264
    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    .line 265
    return-void

    .line 261
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 273
    :cond_58
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Landroid/widget/SpellChecker$SpellParser;

    .line 274
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 277
    new-instance v1, Landroid/widget/SpellChecker$SpellParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker-IA;)V

    .line 278
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v1, v2, v0

    .line 279
    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    .line 280
    return-void
.end method
