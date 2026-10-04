.class public final Landroid/view/inputmethod/TextBoundsInfo;
.super Ljava/lang/Object;
.source "TextBoundsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/TextBoundsInfo$Builder;,
        Landroid/view/inputmethod/TextBoundsInfo$CharacterFlags;
    }
.end annotation


# static fields
.field private static final blacklist BIDI_LEVEL_MASK:I = 0x3f80000

.field private static final blacklist BIDI_LEVEL_SHIFT:I = 0x13

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/TextBoundsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_CHARACTER_LINEFEED:I = 0x2

.field public static final whitelist FLAG_CHARACTER_PUNCTUATION:I = 0x4

.field public static final whitelist FLAG_CHARACTER_WHITESPACE:I = 0x1

.field private static final blacklist FLAG_GRAPHEME_SEGMENT_END:I = 0x4000000

.field private static final blacklist FLAG_GRAPHEME_SEGMENT_START:I = 0x8000000

.field public static final whitelist FLAG_LINE_IS_RTL:I = 0x8

.field private static final blacklist FLAG_LINE_SEGMENT_END:I = 0x40000000

.field private static final blacklist FLAG_LINE_SEGMENT_START:I = -0x80000000

.field private static final blacklist FLAG_WORD_SEGMENT_END:I = 0x10000000

.field private static final blacklist FLAG_WORD_SEGMENT_START:I = 0x20000000

.field private static final blacklist KNOWN_CHARACTER_FLAGS:I = 0xf

.field private static final blacklist TEXT_BOUNDS_INFO_KEY:Ljava/lang/String; = "android.view.inputmethod.TextBoundsInfo"


# instance fields
.field private final blacklist mCharacterBounds:[F

.field private final blacklist mEnd:I

.field private final blacklist mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

.field private final blacklist mInternalCharacterFlags:[I

.field private final blacklist mLineSegmentFinder:Landroid/text/SegmentFinder;

.field private final blacklist mMatrixValues:[F

.field private final blacklist mStart:I

.field private final blacklist mWordSegmentFinder:Landroid/text/SegmentFinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/inputmethod/TextBoundsInfo;->isLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 956
    new-instance v0, Landroid/view/inputmethod/TextBoundsInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/TextBoundsInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/TextBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 919
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const/high16 v2, 0x8000000

    const/high16 v3, 0x4000000

    invoke-static {p1, v2, v3, v0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    .line 921
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const/high16 v2, 0x20000000

    const/high16 v3, 0x10000000

    invoke-static {p1, v2, v3, v0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    .line 923
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v2, v3, v0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    .line 926
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr v0, v1

    .line 928
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    .line 929
    const/4 v1, 0x0

    :goto_65
    if-ge v1, v0, :cond_74

    .line 931
    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget v3, p1, v1

    const v4, 0x3f8000f

    and-int/2addr v3, v4

    aput v3, v2, v1

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 933
    :cond_74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/TextBoundsInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;)V
    .registers 7

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmStart(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    .line 937
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmEnd(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    .line 938
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    .line 939
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr v0, v1

    .line 940
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterBounds(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    .line 942
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    .line 943
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_49

    .line 944
    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterFlags(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterBidiLevels(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I

    move-result-object v4

    aget v4, v4, v1

    shl-int/lit8 v4, v4, 0x13

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 947
    :cond_49
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmGraphemeSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    .line 948
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmWordSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    .line 949
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmLineSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    .line 950
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;Landroid/view/inputmethod/TextBoundsInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;-><init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;)V

    return-void
.end method

.method public static blacklist createFromBundle(Landroid/os/Bundle;)Landroid/view/inputmethod/TextBoundsInfo;
    .registers 3

    .line 990
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 991
    :cond_4
    const-string v0, "android.view.inputmethod.TextBoundsInfo"

    const-class v1, Landroid/view/inputmethod/TextBoundsInfo;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/TextBoundsInfo;

    return-object p0
.end method

.method private static blacklist decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;
    .registers 9

    .line 1367
    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_3c

    .line 1372
    const/16 p4, 0xa

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p4

    .line 1373
    nop

    .line 1374
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    array-length v2, p0

    if-ge v0, v2, :cond_32

    .line 1375
    aget v2, p0, v0

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_21

    .line 1376
    add-int/lit8 v2, v1, 0x1

    add-int v3, p3, v0

    invoke-static {p4, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p4

    move v1, v2

    .line 1378
    :cond_21
    aget v2, p0, v0

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_2f

    .line 1379
    add-int/lit8 v2, v1, 0x1

    add-int v3, p3, v0

    invoke-static {p4, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p4

    move v1, v2

    .line 1374
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1382
    :cond_32
    new-instance p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;-><init>([I)V

    return-object p0

    .line 1368
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The given flags array must have the same length as the given range. flags length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " range: ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V
    .registers 11

    .line 1324
    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_31

    .line 1330
    invoke-virtual {p5, p3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    .line 1331
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-void

    .line 1332
    :cond_f
    invoke-virtual {p5, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    .line 1334
    :goto_13
    if-eq v0, v1, :cond_30

    if-gt v0, p4, :cond_30

    .line 1335
    if-lt v2, p3, :cond_27

    .line 1336
    sub-int v3, v2, p3

    aget v4, p0, v3

    or-int/2addr v4, p1

    aput v4, p0, v3

    .line 1337
    sub-int v3, v0, p3

    aget v4, p0, v3

    or-int/2addr v4, p2

    aput v4, p0, v3

    .line 1339
    :cond_27
    invoke-virtual {p5, v2}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v2

    .line 1340
    invoke-virtual {p5, v0}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    goto :goto_13

    .line 1342
    :cond_30
    return-void

    .line 1325
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "The given flags array must have the same length as the given range. flags length: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " range: ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getBoundsForRange(IILandroid/graphics/RectF;)V
    .registers 8

    .line 553
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "start"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 554
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 555
    if-gt p2, p1, :cond_19

    .line 556
    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    .line 557
    return-void

    .line 560
    :cond_19
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 561
    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 562
    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 563
    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 564
    nop

    :goto_26
    if-ge p1, p2, :cond_67

    .line 565
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int v0, p1, v0

    .line 566
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 v0, v0, 0x4

    aget v2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 567
    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 568
    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p3, Landroid/graphics/RectF;->right:F

    .line 569
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v0, v0, 0x3

    aget v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 564
    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    .line 571
    :cond_67
    return-void
.end method

.method private blacklist getCursorHorizontalPosition(IIIFF)F
    .registers 10

    .line 504
    const-string v0, "index"

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 505
    invoke-virtual {p0, p2}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 506
    :goto_12
    nop

    .line 507
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/TextBoundsInfo;->primaryIsTrailingPrevious(III)Z

    move-result v3

    .line 514
    if-eqz v3, :cond_23

    .line 516
    if-gt p1, p2, :cond_1f

    .line 517
    if-eqz v0, :cond_1e

    move p4, p5

    :cond_1e
    return p4

    .line 519
    :cond_1f
    add-int/lit8 p1, p1, -0x1

    .line 520
    move p2, v1

    goto :goto_2c

    .line 523
    :cond_23
    if-lt p1, p3, :cond_2a

    .line 524
    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move p4, p5

    :goto_29
    return p4

    .line 526
    :cond_2a
    nop

    .line 527
    move p2, v2

    .line 531
    :goto_2c
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result p3

    and-int/2addr p3, v2

    if-eqz p3, :cond_34

    move v1, v2

    .line 532
    :cond_34
    iget p3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr p1, p3

    .line 542
    if-eq v1, p2, :cond_40

    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 p1, p1, 0x4

    aget p1, p2, p1

    goto :goto_48

    :cond_40
    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x2

    aget p1, p2, p1

    :goto_48
    return p1
.end method

.method private blacklist getEndForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 16

    .line 799
    const/4 v0, -0x1

    if-lt p1, p2, :cond_4

    return v0

    .line 800
    :cond_4
    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 801
    iget p1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 804
    nop

    .line 805
    nop

    .line 807
    add-int/lit8 p2, p1, -0x1

    move v4, p1

    move p1, v0

    :goto_16
    if-lt p2, v3, :cond_3d

    .line 808
    invoke-virtual {p0, p2}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v1

    .line 809
    if-eq v1, p1, :cond_34

    .line 810
    add-int/lit8 v5, p2, 0x1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    move v6, v4

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p1

    .line 812
    move p3, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    if-eq p1, v0, :cond_30

    return p1

    .line 814
    :cond_30
    nop

    .line 815
    move v4, p3

    move p1, v1

    goto :goto_37

    .line 809
    :cond_34
    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 807
    :goto_37
    add-int/lit8 p2, p2, -0x1

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    goto :goto_16

    .line 818
    :cond_3d
    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p1

    return p1
.end method

.method private blacklist getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 12

    .line 837
    const/4 v0, -0x1

    if-lt p1, p2, :cond_4

    return v0

    .line 839
    :cond_4
    invoke-virtual {p4, p2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    .line 841
    if-ne v1, v0, :cond_b

    return v0

    .line 842
    :cond_b
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    .line 844
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 845
    :goto_14
    if-eq v2, v0, :cond_33

    if-le v2, p1, :cond_33

    .line 846
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 847
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 848
    invoke-direct {p0, v4, v5, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    .line 850
    invoke-interface {p5, v3, p3}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_2a

    return v5

    .line 852
    :cond_2a
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    .line 853
    invoke-virtual {p4, v2}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v2

    .line 854
    goto :goto_14

    .line 855
    :cond_33
    return v0
.end method

.method private blacklist getLineInfo(F[ILandroid/graphics/RectF;)V
    .registers 15

    .line 589
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p2, v0

    .line 590
    const/4 v2, 0x1

    aput v1, p2, v2

    .line 593
    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v3, v4}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v3

    .line 594
    if-ne v3, v1, :cond_12

    return-void

    .line 595
    :cond_12
    iget-object v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v4, v3}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v4

    .line 597
    nop

    .line 598
    nop

    .line 599
    nop

    .line 600
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x1

    move v8, v7

    move v7, v6

    .line 601
    :goto_26
    if-eq v4, v1, :cond_7d

    iget v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge v4, v9, :cond_7d

    .line 602
    iget v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 603
    iget v10, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 604
    invoke-direct {p0, v9, v10, v5}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    .line 606
    iget v9, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 607
    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 609
    invoke-static {v5, p1}, Landroid/view/inputmethod/TextBoundsInfo;->verticalDistance(Landroid/graphics/RectF;F)F

    move-result v9

    .line 611
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-nez v10, :cond_5a

    .line 612
    aput v4, p2, v0

    .line 613
    aput v3, p2, v2

    .line 614
    if-eqz p3, :cond_59

    .line 615
    invoke-virtual {p3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 617
    :cond_59
    return-void

    .line 620
    :cond_5a
    cmpg-float v10, v9, v7

    if-gez v10, :cond_69

    .line 621
    nop

    .line 622
    aput v4, p2, v0

    .line 623
    aput v3, p2, v2

    .line 624
    if-eqz p3, :cond_68

    .line 625
    invoke-virtual {p3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 628
    :cond_68
    move v7, v9

    :cond_69
    iget v9, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v9, p1, v9

    if-gez v9, :cond_70

    goto :goto_7d

    .line 629
    :cond_70
    iget-object v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v9, v4}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v4

    .line 630
    iget-object v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v9, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v3

    .line 631
    goto :goto_26

    .line 635
    :cond_7d
    :goto_7d
    cmpg-float v3, p1, v6

    if-ltz v3, :cond_85

    cmpl-float p1, p1, v8

    if-lez p1, :cond_8e

    .line 636
    :cond_85
    aput v1, p2, v0

    .line 637
    aput v1, p2, v2

    .line 638
    if-eqz p3, :cond_8e

    .line 639
    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    .line 642
    :cond_8e
    return-void
.end method

.method private blacklist getStartForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 16

    .line 725
    const/4 v0, -0x1

    if-lt p1, p2, :cond_4

    return v0

    .line 727
    :cond_4
    nop

    .line 728
    nop

    .line 730
    move v2, p1

    move v3, v2

    move p1, v0

    :goto_9
    if-ge v3, p2, :cond_29

    .line 731
    invoke-virtual {p0, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v7

    .line 732
    if-eq v7, p1, :cond_20

    .line 733
    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p1

    .line 735
    if-eq p1, v0, :cond_1c

    .line 736
    return p1

    .line 739
    :cond_1c
    nop

    .line 740
    move v2, v3

    move p1, v7

    goto :goto_23

    .line 732
    :cond_20
    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 730
    :goto_23
    add-int/lit8 v3, v3, 0x1

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    goto :goto_9

    .line 743
    :cond_29
    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v4

    move-object v8, v5

    move-object v9, v6

    move-object v4, p0

    move v6, p2

    move v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p1

    return p1
.end method

.method private blacklist getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 12

    .line 762
    const/4 v0, -0x1

    if-lt p1, p2, :cond_4

    return v0

    .line 764
    :cond_4
    invoke-virtual {p4, p1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    .line 766
    if-ne v1, v0, :cond_b

    return v0

    .line 767
    :cond_b
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    .line 769
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 770
    :goto_14
    if-eq v2, v0, :cond_33

    if-ge v2, p2, :cond_33

    .line 771
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 772
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 773
    invoke-direct {p0, v4, v5, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    .line 775
    invoke-interface {p5, v3, p3}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_2a

    return v4

    .line 777
    :cond_2a
    invoke-virtual {p4, v2}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v2

    .line 778
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    .line 779
    goto :goto_14

    .line 780
    :cond_33
    return v0
.end method

.method private static blacklist isLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z
    .registers 13

    .line 1391
    invoke-virtual {p1, p2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    .line 1392
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    .line 1393
    :cond_9
    invoke-virtual {p1, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    .line 1395
    :goto_d
    if-eq v3, v2, :cond_40

    if-ge v3, p3, :cond_40

    .line 1396
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1397
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1398
    sub-int v6, v4, p2

    aget v6, p0, v6

    and-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_24

    move v6, v1

    goto :goto_25

    :cond_24
    move v6, v7

    .line 1399
    :cond_25
    :goto_25
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_37

    .line 1400
    sub-int v8, v4, p2

    aget v8, p0, v8

    .line 1401
    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_33

    move v8, v1

    goto :goto_34

    :cond_33
    move v8, v7

    .line 1402
    :goto_34
    if-eq v8, v6, :cond_25

    .line 1403
    return v7

    .line 1407
    :cond_37
    invoke-virtual {p1, v3}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v3

    .line 1408
    invoke-virtual {p1, v0}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    .line 1409
    goto :goto_d

    .line 1410
    :cond_40
    return v1
.end method

.method private blacklist primaryIsTrailingPrevious(III)Z
    .registers 7

    .line 466
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ge p1, p3, :cond_b

    .line 467
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result p3

    goto :goto_18

    .line 470
    :cond_b
    add-int/lit8 p3, p1, -0x1

    .line 471
    invoke-virtual {p0, p3}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result p3

    and-int/2addr p3, v1

    if-ne p3, v1, :cond_16

    move p3, v2

    goto :goto_17

    :cond_16
    move p3, v0

    .line 472
    :goto_17
    nop

    .line 475
    :goto_18
    if-le p1, p2, :cond_20

    .line 478
    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result p1

    goto :goto_2c

    .line 481
    :cond_20
    nop

    .line 482
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2a

    move p1, v2

    goto :goto_2b

    :cond_2a
    move p1, v0

    .line 483
    :goto_2b
    nop

    .line 485
    :goto_2c
    if-ge p1, p3, :cond_2f

    move v0, v2

    :cond_2f
    return v0
.end method

.method private static blacklist verticalDistance(Landroid/graphics/RectF;F)F
    .registers 3

    .line 863
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_e

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    .line 864
    const/4 p0, 0x0

    return p0

    .line 866
    :cond_e
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_18

    .line 867
    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p1

    return p0

    .line 869
    :cond_18
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCharacterBidiLevel(I)I
    .registers 4

    .line 276
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_15

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v0, :cond_15

    .line 280
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr p1, v0

    .line 281
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget p1, v0, p1

    const/high16 v0, 0x3f80000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x13

    return p1

    .line 277
    :cond_15
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index is out of the bounds of ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getCharacterBounds(ILandroid/graphics/RectF;)V
    .registers 7

    .line 212
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_27

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v0, :cond_27

    .line 216
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x4

    .line 217
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    aget v0, v0, p1

    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v3, p1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 p1, p1, 0x3

    aget p1, v3, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    return-void

    .line 213
    :cond_27
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index is out of the bounds of ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getCharacterFlags(I)I
    .registers 4

    .line 250
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_12

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v0, :cond_12

    .line 254
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr p1, v0

    .line 255
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0xf

    return p1

    .line 251
    :cond_12
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index is out of the bounds of ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getEndIndex()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    return v0
.end method

.method public whitelist getGraphemeSegmentFinder()Landroid/text/SegmentFinder;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    return-object v0
.end method

.method public whitelist getLineSegmentFinder()Landroid/text/SegmentFinder;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    return-object v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 178
    return-void
.end method

.method public whitelist getOffsetForPosition(FF)I
    .registers 15

    .line 351
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 352
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 353
    invoke-direct {p0, p2, v1, v2}, Landroid/view/inputmethod/TextBoundsInfo;->getLineInfo(F[ILandroid/graphics/RectF;)V

    .line 355
    const/4 p2, 0x0

    aget v3, v1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_65

    const/4 v3, 0x1

    aget v5, v1, v3

    if-ne v5, v4, :cond_17

    goto :goto_65

    .line 356
    :cond_17
    aget v8, v1, p2

    .line 357
    aget v9, v1, v3

    .line 359
    add-int/lit8 v1, v9, -0x1

    .line 360
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    move p2, v3

    .line 377
    :cond_25
    if-eqz p2, :cond_29

    .line 378
    move p2, v9

    goto :goto_2b

    .line 380
    :cond_29
    add-int/lit8 p2, v9, 0x1

    .line 383
    :goto_2b
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v0, v8}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    .line 385
    if-ne v0, v4, :cond_34

    return v4

    .line 386
    :cond_34
    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v1, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v0

    .line 388
    nop

    .line 389
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v0

    move v0, v4

    .line 390
    :goto_40
    if-eq v7, v4, :cond_64

    if-ge v7, p2, :cond_64

    .line 391
    if-lt v7, v8, :cond_5c

    .line 392
    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget v11, v2, Landroid/graphics/RectF;->right:F

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/view/inputmethod/TextBoundsInfo;->getCursorHorizontalPosition(IIIFF)F

    move-result v3

    .line 394
    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 395
    cmpg-float v5, v3, v1

    if-gez v5, :cond_5d

    .line 396
    nop

    .line 397
    move v1, v3

    move v0, v7

    goto :goto_5d

    .line 391
    :cond_5c
    move-object v6, p0

    .line 400
    :cond_5d
    :goto_5d
    iget-object v3, v6, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v7}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v7

    goto :goto_40

    .line 403
    :cond_64
    return v0

    .line 355
    :cond_65
    :goto_65
    return v4
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .registers 13

    .line 675
    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v1, v2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    .line 677
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v1, v7, :cond_d

    return-object v6

    .line 678
    :cond_d
    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v2, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    .line 680
    move v8, v2

    move v2, v1

    move v1, v8

    move v8, v7

    .line 681
    :goto_17
    if-eq v1, v7, :cond_30

    if-ne v8, v7, :cond_30

    .line 682
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v8

    .line 684
    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v1}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v1

    .line 685
    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    goto :goto_17

    .line 689
    :cond_30
    if-ne v8, v7, :cond_33

    return-object v6

    .line 691
    :cond_33
    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v1, v2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    .line 693
    if-ne v1, v7, :cond_3e

    return-object v6

    .line 694
    :cond_3e
    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v2, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    .line 695
    move v3, v7

    .line 696
    :goto_45
    if-le v2, v8, :cond_5f

    if-ne v3, v7, :cond_5f

    .line 697
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v6

    .line 699
    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    .line 700
    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v2}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v2

    move v3, v6

    goto :goto_45

    .line 704
    :cond_5f
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p2, v8}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v0

    .line 705
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    .line 706
    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStartIndex()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    return v0
.end method

.method public whitelist getWordSegmentFinder()Landroid/text/SegmentFinder;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    return-object v0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 3

    .line 981
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 982
    const-string v1, "android.view.inputmethod.TextBoundsInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 983
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    .line 896
    iget p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    iget p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 899
    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 902
    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 903
    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, 0x8000000

    const/high16 v3, 0x4000000

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    .line 905
    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, 0x20000000

    const/high16 v3, 0x10000000

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    .line 907
    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    .line 909
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 910
    return-void
.end method
