.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$StringWithRemovedChars;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;,
        Landroid/text/TextUtils$SafeStringFlags;
    }
.end annotation


# static fields
.field public static final greylist-max-o ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final greylist-max-o ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final blacklist ACCESSIBILITY_REPLACEMENT_SPAN:I = 0x1d

.field public static final greylist-max-o ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final greylist-max-o ALIGNMENT_SPAN:I = 0x1

.field public static final greylist-max-o ANNOTATION:I = 0x12

.field public static final greylist-max-o BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final greylist-max-o BULLET_SPAN:I = 0x8

.field public static final whitelist CAP_MODE_CHARACTERS:I = 0x1000

.field public static final whitelist CAP_MODE_SENTENCES:I = 0x4000

.field public static final whitelist CAP_MODE_WORDS:I = 0x2000

.field public static final whitelist CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EASY_EDIT_SPAN:I = 0x16

.field static final greylist-max-o ELLIPSIS_FILLER:C = '\ufeff'

.field private static final greylist-max-o ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final greylist-max-o ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field public static final greylist-max-o FIRST_SPAN:I = 0x1

.field public static final greylist-max-o FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final greylist-max-o LAST_SPAN:I = 0x1f

.field public static final greylist-max-o LEADING_MARGIN_SPAN:I = 0xa

.field public static final blacklist LINE_BACKGROUND_SPAN:I = 0x1b

.field public static final blacklist LINE_BREAK_CONFIG_SPAN:I = 0x1e

.field public static final blacklist LINE_FEED_CODE_POINT:I = 0xa

.field public static final blacklist LINE_HEIGHT_SPAN:I = 0x1c

.field public static final greylist-max-o LOCALE_SPAN:I = 0x17

.field private static final blacklist NBSP_CODE_POINT:I = 0xa0

.field public static final blacklist NO_WRITING_TOOLS_SPAN:I = 0x1f

.field private static final greylist-max-o PARCEL_SAFE_TEXT_LENGTH:I = 0x186a0

.field public static final greylist-max-o QUOTE_SPAN:I = 0x9

.field public static final greylist-max-o RELATIVE_SIZE_SPAN:I = 0x3

.field public static final whitelist SAFE_STRING_FLAG_FIRST_LINE:I = 0x4

.field public static final whitelist SAFE_STRING_FLAG_SINGLE_LINE:I = 0x2

.field public static final whitelist SAFE_STRING_FLAG_TRIM:I = 0x1

.field public static final greylist-max-o SCALE_X_SPAN:I = 0x4

.field public static final greylist-max-o SPELL_CHECK_SPAN:I = 0x14

.field public static final greylist-max-o STRIKETHROUGH_SPAN:I = 0x5

.field public static final greylist-max-o STYLE_SPAN:I = 0x7

.field public static final greylist-max-o SUBSCRIPT_SPAN:I = 0xf

.field public static final greylist-max-o SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final greylist-max-o SUGGESTION_SPAN:I = 0x13

.field public static final greylist-max-o SUPERSCRIPT_SPAN:I = 0xe

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TextUtils"

.field public static final greylist-max-o TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final greylist-max-o TTS_SPAN:I = 0x18

.field public static final greylist-max-o TYPEFACE_SPAN:I = 0xd

.field public static final greylist-max-o UNDERLINE_SPAN:I = 0x6

.field public static final greylist-max-o URL_SPAN:I = 0xb

.field private static greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sTemp:[C


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 858
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2617
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 2619
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .registers 24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1591
    nop

    .line 1592
    nop

    .line 1594
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1595
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p5

    invoke-static/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v5

    .line 1596
    invoke-virtual {v5}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_f0

    .line 1597
    cmpg-float v0, v0, p2

    if-gtz v0, :cond_23

    .line 1598
    nop

    .line 1650
    if-eqz v5, :cond_21

    .line 1651
    invoke-virtual {v5}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1653
    :cond_21
    nop

    .line 1598
    return-object v1

    .line 1601
    :cond_23
    :try_start_23
    invoke-virtual {v5}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    .line 1603
    nop

    .line 1604
    const/4 v2, 0x0

    move v4, v2

    move v7, v4

    :goto_2b
    const/16 v13, 0x2c

    if-ge v4, v3, :cond_38

    .line 1605
    aget-char v8, v0, v4

    if-ne v8, v13, :cond_35

    .line 1606
    add-int/lit8 v7, v7, 0x1

    .line 1604
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 1610
    :cond_38
    const/4 v4, 0x1

    add-int/2addr v7, v4

    .line 1612
    nop

    .line 1613
    const-string v8, ""

    .line 1615
    nop

    .line 1616
    nop

    .line 1617
    invoke-virtual {v5}, Landroid/text/MeasuredParagraph;->getWidths()Landroid/text/AutoGrowArray$FloatArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v14
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_f0

    .line 1619
    move v9, v2

    move v15, v9

    move-object v12, v6

    move-object v6, v8

    move v8, v15

    :goto_4c
    if-ge v15, v3, :cond_d8

    .line 1620
    int-to-float v8, v8

    :try_start_4f
    aget v10, v14, v15

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 1622
    aget-char v10, v0, v15
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_ed

    if-ne v10, v13, :cond_c8

    .line 1623
    nop

    .line 1628
    add-int/lit8 v7, v7, -0x1

    const-string v10, " "

    if-ne v7, v4, :cond_74

    .line 1629
    :try_start_5e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v13, p4

    goto :goto_95

    .line 1631
    :cond_74
    move-object/from16 v11, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v13, p4

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1635
    :goto_95
    nop

    .line 1636
    move v4, v8

    move-object v8, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    .line 1635
    move/from16 v16, v9

    const/4 v9, 0x0

    move/from16 v11, v16

    move-object/from16 v16, v0

    move v0, v11

    move-object/from16 v11, p5

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v9
    :try_end_ae
    .catchall {:try_start_5e .. :try_end_ae} :catchall_ed

    .line 1637
    :try_start_ae
    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v7
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_c5

    .line 1639
    int-to-float v10, v4

    add-float/2addr v10, v7

    cmpg-float v7, v10, p2

    if-gtz v7, :cond_c0

    .line 1640
    add-int/lit8 v0, v15, 0x1

    .line 1641
    move-object v6, v8

    move-object v12, v9

    move/from16 v7, v17

    move v9, v0

    goto :goto_ce

    .line 1639
    :cond_c0
    move-object v12, v9

    move/from16 v7, v17

    move v9, v0

    goto :goto_ce

    .line 1650
    :catchall_c5
    move-exception v0

    move-object v6, v9

    goto :goto_f1

    .line 1622
    :cond_c8
    move-object/from16 v13, p4

    move-object/from16 v16, v0

    move v4, v8

    move v0, v9

    .line 1619
    :goto_ce
    add-int/lit8 v15, v15, 0x1

    move v8, v4

    move-object/from16 v0, v16

    const/4 v4, 0x1

    const/16 v13, 0x2c

    goto/16 :goto_4c

    .line 1646
    :cond_d8
    move v0, v9

    :try_start_d9
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1647
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_e1
    .catchall {:try_start_d9 .. :try_end_e1} :catchall_ed

    .line 1648
    nop

    .line 1650
    if-eqz v5, :cond_e7

    .line 1651
    invoke-virtual {v5}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1653
    :cond_e7
    if-eqz v12, :cond_ec

    .line 1654
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1648
    :cond_ec
    return-object v3

    .line 1650
    :catchall_ed
    move-exception v0

    move-object v6, v12

    goto :goto_f1

    :catchall_f0
    move-exception v0

    :goto_f1
    if-eqz v5, :cond_f6

    .line 1651
    invoke-virtual {v5}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1653
    :cond_f6
    if-eqz v6, :cond_fb

    .line 1654
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1656
    :cond_fb
    throw v0
.end method

.method public static varargs whitelist concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .line 1768
    array-length v0, p0

    if-nez v0, :cond_6

    .line 1769
    const-string p0, ""

    return-object p0

    .line 1772
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 1773
    aget-object p0, p0, v1

    return-object p0

    .line 1776
    :cond_e
    nop

    .line 1777
    array-length v0, p0

    move v3, v1

    :goto_11
    if-ge v3, v0, :cond_1e

    aget-object v4, p0, v3

    .line 1778
    instance-of v4, v4, Landroid/text/Spanned;

    if-eqz v4, :cond_1b

    .line 1779
    nop

    .line 1780
    goto :goto_1f

    .line 1777
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1e
    move v2, v1

    .line 1784
    :goto_1f
    if-eqz v2, :cond_3c

    .line 1785
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1786
    array-length v2, p0

    :goto_27
    if-ge v1, v2, :cond_36

    aget-object v3, p0, v1

    .line 1790
    if-nez v3, :cond_30

    const-string/jumbo v3, "null"

    :cond_30
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1786
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1792
    :cond_36
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 1794
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1795
    array-length v2, p0

    :goto_42
    if-ge v1, v2, :cond_4c

    aget-object v3, p0, v1

    .line 1796
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1795
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 1798
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 11

    .line 1230
    if-nez p3, :cond_4

    .line 1231
    const-class p3, Ljava/lang/Object;

    .line 1234
    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    .line 1236
    const/4 v0, 0x0

    :goto_9
    array-length v1, p3

    if-ge v0, v1, :cond_30

    .line 1237
    aget-object v1, p3, v0

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1238
    aget-object v2, p3, v0

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1239
    aget-object v3, p3, v0

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 1241
    if-ge v1, p1, :cond_21

    .line 1242
    move v1, p1

    .line 1243
    :cond_21
    if-le v2, p2, :cond_24

    .line 1244
    move v2, p2

    .line 1246
    :cond_24
    aget-object v4, p3, v0

    sub-int/2addr v1, p1

    add-int/2addr v1, p5

    sub-int/2addr v2, p1

    add-int/2addr v2, p5

    invoke-interface {p4, v4, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1249
    :cond_30
    return-void
.end method

.method static greylist-max-o couldAffectRtl(C)Z
    .registers 2

    .line 1666
    const/16 v0, 0x590

    if-gt v0, p0, :cond_8

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_41

    :cond_8
    const/16 v0, 0x200e

    if-eq p0, v0, :cond_41

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_41

    const/16 v0, 0x202a

    if-gt v0, p0, :cond_18

    const/16 v0, 0x202e

    if-le p0, v0, :cond_41

    :cond_18
    const/16 v0, 0x2066

    if-gt v0, p0, :cond_20

    const/16 v0, 0x2069

    if-le p0, v0, :cond_41

    :cond_20
    const v0, 0xd800

    if-gt v0, p0, :cond_2a

    const v0, 0xdfff

    if-le p0, v0, :cond_41

    :cond_2a
    const v0, 0xfb1d

    if-gt v0, p0, :cond_34

    const v0, 0xfdff

    if-le p0, v0, :cond_41

    :cond_34
    const v0, 0xfe70

    if-gt v0, p0, :cond_3f

    const v0, 0xfefe

    if-gt p0, v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p0, 0x1

    :goto_42
    return p0
.end method

.method public static greylist-max-o delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9

    .line 2017
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_39

    .line 2020
    :cond_e
    nop

    .line 2021
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, -0x1

    move v3, v2

    .line 2022
    :goto_15
    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_38

    .line 2023
    if-lez v3, :cond_28

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, p1, :cond_28

    .line 2024
    goto :goto_15

    .line 2026
    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    .line 2027
    if-ne v5, v0, :cond_30

    .line 2029
    return v4

    .line 2031
    :cond_30
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_37

    .line 2032
    return v4

    .line 2034
    :cond_37
    goto :goto_15

    .line 2035
    :cond_38
    return v1

    .line 2018
    :cond_39
    :goto_39
    return v1
.end method

.method static greylist-max-o doesNotNeedBidi([CII)Z
    .registers 4

    .line 1682
    add-int/2addr p2, p1

    .line 1683
    nop

    :goto_2
    if-ge p1, p2, :cond_11

    .line 1684
    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1685
    const/4 p0, 0x0

    return p0

    .line 1683
    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1688
    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 10

    .line 1031
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_8a

    .line 1032
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 1033
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1035
    nop

    :goto_13
    array-length v2, v1

    if-ge v3, v2, :cond_89

    .line 1036
    aget-object v2, v1, v3

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1038
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1037
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1039
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1040
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1042
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1044
    :cond_89
    goto :goto_a4

    .line 1045
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": (no spans)"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1047
    :goto_a4
    return-void
.end method

.method public static whitelist ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10

    .line 1349
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 14

    .line 1369
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 1371
    invoke-static {p3}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v7

    .line 1369
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 15

    .line 1394
    move v0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 1396
    nop

    .line 1398
    const/4 v6, 0x0

    :try_start_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v3, 0x0

    move-object v2, p0

    move-object v1, p1

    move-object v5, p6

    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v6

    .line 1399
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result p0

    .line 1401
    cmpg-float p0, p0, v0

    const/4 p1, 0x0

    if-gtz p0, :cond_28

    .line 1402
    if-eqz p5, :cond_21

    .line 1403
    invoke-interface {p5, p1, p1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_100

    .line 1406
    :cond_21
    nop

    .line 1472
    if-eqz v6, :cond_27

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1406
    :cond_27
    return-object v2

    .line 1411
    :cond_28
    :try_start_28
    invoke-virtual {v1, p7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    .line 1412
    sub-float p0, v0, p0

    .line 1414
    nop

    .line 1415
    nop

    .line 1416
    const/4 p6, 0x0

    cmpg-float p6, p0, p6

    if-gez p6, :cond_38

    move p0, p1

    move p3, p2

    goto :goto_68

    .line 1418
    :cond_38
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, p6, :cond_45

    .line 1419
    invoke-virtual {v6, p2, p1, p0}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result p0

    sub-int p0, p2, p0

    move p3, p0

    move p0, p1

    goto :goto_68

    .line 1420
    :cond_45
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v0, 0x1

    if-eq p3, p6, :cond_63

    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, p6, :cond_4f

    goto :goto_63

    .line 1423
    :cond_4f
    const/high16 p3, 0x40000000    # 2.0f

    div-float p3, p0, p3

    invoke-virtual {v6, p2, p1, p3}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result p3

    sub-int p3, p2, p3

    .line 1424
    invoke-virtual {v6, p3, p2}, Landroid/text/MeasuredParagraph;->measure(II)F

    move-result p6

    sub-float/2addr p0, p6

    .line 1425
    invoke-virtual {v6, p3, v0, p0}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result p0

    goto :goto_68

    .line 1421
    :cond_63
    :goto_63
    invoke-virtual {v6, p2, v0, p0}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result p0

    move p3, p2

    .line 1428
    :goto_68
    if-eqz p5, :cond_6d

    .line 1429
    invoke-interface {p5, p0, p3}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1432
    :cond_6d
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object p5

    .line 1433
    instance-of p6, v2, Landroid/text/Spanned;

    if-eqz p6, :cond_79

    move-object p6, v2

    check-cast p6, Landroid/text/Spanned;

    goto :goto_7a

    :cond_79
    const/4 p6, 0x0

    .line 1435
    :goto_7a
    sub-int v0, p3, p0

    .line 1436
    sub-int v1, p2, v0

    .line 1437
    if-eqz p4, :cond_c1

    .line 1438
    if-lez v1, :cond_94

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p4

    if-lt v0, p4, :cond_94

    .line 1439
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p7, p1, p4, p5, p0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1440
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p0, p4

    .line 1442
    :cond_94
    nop

    :goto_95
    if-ge p0, p3, :cond_9f

    .line 1443
    const p4, 0xfeff

    aput-char p4, p5, p0

    .line 1442
    add-int/lit8 p0, p0, 0x1

    goto :goto_95

    .line 1445
    :cond_9f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p5, p1, p2}, Ljava/lang/String;-><init>([CII)V
    :try_end_a4
    .catchall {:try_start_28 .. :try_end_a4} :catchall_100

    .line 1446
    if-nez p6, :cond_ad

    .line 1447
    nop

    .line 1472
    if-eqz v6, :cond_ac

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1447
    :cond_ac
    return-object p0

    .line 1449
    :cond_ad
    :try_start_ad
    new-instance p4, Landroid/text/SpannableString;

    invoke-direct {p4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1450
    const-class p3, Ljava/lang/Object;

    const/4 p5, 0x0

    const/4 p1, 0x0

    move-object p0, p6

    invoke-static/range {p0 .. p5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_ba
    .catchall {:try_start_ad .. :try_end_ba} :catchall_100

    .line 1451
    nop

    .line 1472
    if-eqz v6, :cond_c0

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1451
    :cond_c0
    return-object p4

    .line 1454
    :cond_c1
    if-nez v1, :cond_cb

    .line 1455
    :try_start_c3
    const-string p0, ""
    :try_end_c5
    .catchall {:try_start_c3 .. :try_end_c5} :catchall_100

    .line 1472
    if-eqz v6, :cond_ca

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1455
    :cond_ca
    return-object p0

    .line 1458
    :cond_cb
    if-nez p6, :cond_eb

    .line 1459
    :try_start_cd
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p6

    add-int/2addr v1, p6

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1460
    invoke-virtual {p4, p5, p1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    sub-int/2addr p2, p3

    invoke-virtual {p4, p5, p3, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e5
    .catchall {:try_start_cd .. :try_end_e5} :catchall_100

    .line 1472
    if-eqz v6, :cond_ea

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1463
    :cond_ea
    return-object p0

    .line 1466
    :cond_eb
    :try_start_eb
    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1467
    invoke-virtual {p4, v2, p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1468
    invoke-virtual {p4, p7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1469
    invoke-virtual {p4, v2, p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_f9
    .catchall {:try_start_eb .. :try_end_f9} :catchall_100

    .line 1470
    nop

    .line 1472
    if-eqz v6, :cond_ff

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1470
    :cond_ff
    return-object p4

    .line 1472
    :catchall_100
    move-exception v0

    move-object p0, v0

    if-eqz v6, :cond_107

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1475
    :cond_107
    throw p0
.end method

.method public static greylist-max-o emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 606
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static whitelist equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    .line 657
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 659
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_32

    .line 660
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_20

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 661
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 663
    :cond_20
    move v3, v1

    :goto_21
    if-ge v3, v2, :cond_31

    .line 664
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2e

    return v1

    .line 663
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 666
    :cond_31
    return v0

    .line 669
    :cond_32
    return v1
.end method

.method public static varargs whitelist expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .line 1101
    array-length v0, p1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_96

    .line 1105
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1108
    const/4 p0, 0x0

    .line 1109
    :goto_b
    :try_start_b
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ge p0, v1, :cond_93

    .line 1110
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_8f

    .line 1111
    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 1112
    if-ne v3, v2, :cond_29

    .line 1113
    add-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1114
    nop

    .line 1115
    move p0, v1

    goto :goto_b

    .line 1116
    :cond_29
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1117
    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_33} :catch_94

    add-int/lit8 v1, v1, -0x1

    .line 1118
    const-string/jumbo v2, "template requests value ^"

    if-ltz v1, :cond_76

    .line 1122
    :try_start_3a
    array-length v3, p1

    if-ge v1, v3, :cond_4c

    .line 1127
    add-int/lit8 v2, p0, 0x2

    aget-object v3, p1, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1128
    aget-object v1, p1, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr p0, v1

    .line 1129
    goto :goto_b

    .line 1123
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " provided"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1119
    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_8f} :catch_94

    .line 1132
    :cond_8f
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_b

    .line 1136
    :cond_93
    goto :goto_95

    .line 1134
    :catch_94
    move-exception p0

    .line 1137
    :goto_95
    return-object v0

    .line 1102
    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "max of 9 values are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 611
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_d

    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_d
    return-object p0
.end method

.method public static varargs blacklist formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 14

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2167
    nop

    .line 2168
    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_119

    .line 2169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_115

    .line 2170
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2173
    nop

    .line 2174
    nop

    .line 2175
    const/4 v4, 0x2

    move v5, p0

    move v6, v5

    .line 2176
    :goto_22
    const/16 v7, 0x30

    const/4 v8, 0x1

    if-gt v7, v3, :cond_46

    const/16 v9, 0x39

    if-gt v3, v9, :cond_46

    .line 2177
    if-nez v5, :cond_33

    .line 2178
    if-ne v3, v7, :cond_31

    move v5, v7

    goto :goto_33

    :cond_31
    const/16 v5, 0x20

    .line 2180
    :cond_33
    :goto_33
    mul-int/lit8 v6, v6, 0xa

    .line 2181
    const/16 v7, 0xa

    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v6, v3

    .line 2182
    add-int/lit8 v4, v4, 0x1

    .line 2183
    add-int v3, v1, v4

    sub-int/2addr v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_22

    .line 2187
    :cond_46
    const-string v9, "Too few arguments"

    sparse-switch v3, :sswitch_data_12a

    .line 2231
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported format code "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2212
    :sswitch_64
    array-length v3, p1

    if-eq v2, v3, :cond_a7

    .line 2215
    add-int/lit8 v3, v2, 0x1

    aget-object v2, p1, v2

    .line 2216
    instance-of v9, v2, Ljava/lang/Integer;

    if-eqz v9, :cond_7b

    .line 2217
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_eb

    .line 2218
    :cond_7b
    instance-of v9, v2, Ljava/lang/Long;

    if-eqz v9, :cond_8a

    .line 2219
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_eb

    .line 2221
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported hex type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2222
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2213
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2204
    :sswitch_ad
    array-length v3, p1

    if-eq v2, v3, :cond_b9

    .line 2207
    add-int/lit8 v3, v2, 0x1

    aget-object v2, p1, v2

    .line 2208
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2209
    goto :goto_eb

    .line 2205
    :cond_b9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2189
    :sswitch_bf
    array-length v3, p1

    if-eq v2, v3, :cond_df

    .line 2192
    add-int/lit8 v3, v2, 0x1

    aget-object v2, p1, v2

    .line 2193
    instance-of v9, v2, Ljava/lang/Boolean;

    if-eqz v9, :cond_d5

    .line 2194
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_eb

    .line 2196
    :cond_d5
    if-eqz v2, :cond_d9

    move v2, v8

    goto :goto_da

    :cond_d9
    move v2, p0

    :goto_da
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 2198
    goto :goto_eb

    .line 2190
    :cond_df
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2227
    :sswitch_e5
    nop

    .line 2228
    const-string v3, "%"

    move-object v11, v3

    move v3, v2

    move-object v2, v11

    .line 2235
    :goto_eb
    add-int/2addr v4, v1

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    if-ne v5, v7, :cond_fa

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2d

    if-ne v4, v7, :cond_fa

    goto :goto_fb

    :cond_fa
    move v8, p0

    .line 2239
    :goto_fb
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_ff
    if-ge v4, v6, :cond_109

    .line 2240
    add-int v7, v1, v8

    invoke-virtual {v0, v7, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2239
    add-int/lit8 v4, v4, 0x1

    goto :goto_ff

    .line 2242
    :cond_109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2243
    move v2, v3

    goto/16 :goto_9

    .line 2244
    :cond_115
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 2247
    :cond_119
    array-length p0, p1

    if-ne v2, p0, :cond_121

    .line 2250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2248
    :cond_121
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too many arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_12a
    .sparse-switch
        0x25 -> :sswitch_e5
        0x62 -> :sswitch_bf
        0x63 -> :sswitch_ad
        0x64 -> :sswitch_ad
        0x66 -> :sswitch_ad
        0x73 -> :sswitch_ad
        0x78 -> :sswitch_64
    .end sparse-switch
.end method

.method public static whitelist getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 9

    .line 1921
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 1922
    return v0

    .line 1927
    :cond_4
    nop

    .line 1929
    and-int/lit16 v1, p2, 0x1000

    if-eqz v1, :cond_b

    .line 1930
    const/16 v0, 0x1000

    .line 1932
    :cond_b
    and-int/lit16 v1, p2, 0x6000

    if-nez v1, :cond_10

    .line 1933
    return v0

    .line 1938
    :cond_10
    nop

    :goto_11
    const/16 v1, 0x27

    const/16 v2, 0x22

    if-lez p1, :cond_2d

    .line 1939
    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1941
    if-eq v3, v2, :cond_2a

    if-eq v3, v1, :cond_2a

    .line 1942
    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    const/16 v4, 0x15

    if-eq v3, v4, :cond_2a

    .line 1943
    goto :goto_2d

    .line 1938
    :cond_2a
    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    .line 1949
    :cond_2d
    :goto_2d
    move v3, p1

    .line 1950
    :goto_2e
    if-lez v3, :cond_41

    add-int/lit8 v4, v3, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3e

    const/16 v5, 0x9

    if-ne v4, v5, :cond_41

    .line 1951
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    .line 1953
    :cond_41
    if-eqz v3, :cond_a1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4e

    goto :goto_a1

    .line 1959
    :cond_4e
    and-int/lit16 p2, p2, 0x4000

    if-nez p2, :cond_57

    .line 1960
    if-eq p1, v3, :cond_56

    or-int/lit16 v0, v0, 0x2000

    .line 1961
    :cond_56
    return v0

    .line 1966
    :cond_57
    if-ne p1, v3, :cond_5a

    .line 1967
    return v0

    .line 1972
    :cond_5a
    :goto_5a
    if-lez v3, :cond_72

    .line 1973
    add-int/lit8 p1, v3, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 1975
    if-eq p1, v2, :cond_6f

    if-eq p1, v1, :cond_6f

    .line 1976
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    const/16 p2, 0x16

    if-eq p1, p2, :cond_6f

    .line 1977
    goto :goto_72

    .line 1972
    :cond_6f
    add-int/lit8 v3, v3, -0x1

    goto :goto_5a

    .line 1981
    :cond_72
    :goto_72
    if-lez v3, :cond_a0

    .line 1982
    add-int/lit8 p1, v3, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 1984
    const/16 p2, 0x2e

    if-eq p1, p2, :cond_86

    const/16 v1, 0x3f

    if-eq p1, v1, :cond_86

    const/16 v1, 0x21

    if-ne p1, v1, :cond_a0

    .line 1988
    :cond_86
    if-ne p1, p2, :cond_9d

    .line 1989
    add-int/lit8 v3, v3, -0x2

    :goto_8a
    if-ltz v3, :cond_9d

    .line 1990
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 1992
    if-ne p1, p2, :cond_93

    .line 1993
    return v0

    .line 1996
    :cond_93
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    if-nez p1, :cond_9a

    .line 1997
    goto :goto_9d

    .line 1989
    :cond_9a
    add-int/lit8 v3, v3, -0x1

    goto :goto_8a

    .line 2002
    :cond_9d
    :goto_9d
    or-int/lit16 p0, v0, 0x4000

    return p0

    .line 2006
    :cond_a0
    return v0

    .line 1954
    :cond_a1
    :goto_a1
    or-int/lit16 p0, v0, 0x2000

    return p0
.end method

.method public static whitelist getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 7

    .line 152
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 154
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_e

    .line 155
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_3b

    .line 156
    :cond_e
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_18

    .line 157
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_3b

    .line 158
    :cond_18
    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_22

    .line 159
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_3b

    .line 160
    :cond_22
    instance-of v0, p0, Landroid/text/GetChars;

    if-eqz v0, :cond_2c

    .line 161
    check-cast p0, Landroid/text/GetChars;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_3b

    .line 163
    :cond_2c
    nop

    :goto_2d
    if-ge p1, p2, :cond_3b

    .line 164
    add-int/lit8 v0, p4, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput-char v1, p3, p4

    .line 163
    add-int/lit8 p1, p1, 0x1

    move p4, v0

    goto :goto_2d

    .line 166
    :cond_3b
    :goto_3b
    return-void
.end method

.method public static greylist-max-o getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;
    .registers 2

    .line 145
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "\u2025"

    goto :goto_b

    :cond_8
    const-string/jumbo p0, "\u2026"

    :goto_b
    return-object p0
.end method

.method public static whitelist getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 3

    .line 2132
    if-eqz p0, :cond_14

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2133
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result p0

    if-nez p0, :cond_29

    .line 2135
    :cond_14
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_force_rtl()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 2136
    :cond_29
    const/4 v0, 0x1

    goto :goto_2c

    .line 2137
    :cond_2b
    nop

    .line 2132
    :goto_2c
    return v0
.end method

.method public static whitelist getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 1176
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1178
    if-ne p1, v0, :cond_7

    .line 1179
    return v0

    .line 1180
    :cond_7
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_c

    .line 1181
    return v0

    .line 1183
    :cond_c
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1185
    const v1, 0xd800

    if-lt v0, v1, :cond_2f

    const v1, 0xdbff

    if-gt v0, v1, :cond_2f

    .line 1186
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1188
    const v2, 0xdc00

    if-lt v1, v2, :cond_2d

    const v2, 0xdfff

    if-gt v1, v2, :cond_2d

    .line 1189
    add-int/lit8 v0, p1, 0x2

    goto :goto_2e

    .line 1191
    :cond_2d
    nop

    .line 1192
    :goto_2e
    goto :goto_31

    .line 1193
    :cond_2f
    add-int/lit8 v0, p1, 0x1

    .line 1196
    :goto_31
    instance-of p1, p0, Landroid/text/Spanned;

    if-eqz p1, :cond_57

    .line 1197
    check-cast p0, Landroid/text/Spanned;

    const-class p1, Landroid/text/style/ReplacementSpan;

    invoke-interface {p0, v0, v0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ReplacementSpan;

    .line 1200
    const/4 v1, 0x0

    :goto_40
    array-length v2, p1

    if-ge v1, v2, :cond_57

    .line 1201
    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1202
    aget-object v3, p1, v1

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1204
    if-ge v2, v0, :cond_54

    if-le v3, v0, :cond_54

    .line 1205
    move v0, v3

    .line 1200
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1209
    :cond_57
    return v0
.end method

.method public static whitelist getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 1141
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1142
    return v0

    .line 1143
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 1144
    return v0

    .line 1146
    :cond_8
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1148
    const v2, 0xdc00

    if-lt v1, v2, :cond_2e

    const v2, 0xdfff

    if-gt v1, v2, :cond_2e

    .line 1149
    add-int/lit8 v1, p1, -0x2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1151
    const v2, 0xd800

    if-lt v1, v2, :cond_2b

    const v2, 0xdbff

    if-gt v1, v2, :cond_2b

    .line 1152
    add-int/lit8 p1, p1, -0x2

    goto :goto_2d

    .line 1154
    :cond_2b
    add-int/lit8 p1, p1, -0x1

    .line 1155
    :goto_2d
    goto :goto_30

    .line 1156
    :cond_2e
    add-int/lit8 p1, p1, -0x1

    .line 1159
    :goto_30
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_56

    .line 1160
    check-cast p0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-interface {p0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ReplacementSpan;

    .line 1163
    nop

    :goto_3f
    array-length v2, v1

    if-ge v0, v2, :cond_56

    .line 1164
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1165
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1167
    if-ge v2, p1, :cond_53

    if-le v3, p1, :cond_53

    .line 1168
    move p1, v2

    .line 1163
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 1172
    :cond_56
    return p1
.end method

.method public static whitelist getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static whitelist getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 5

    .line 633
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 635
    const/4 v1, 0x0

    .line 636
    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 640
    :cond_12
    nop

    .line 641
    :goto_13
    if-le v0, v1, :cond_20

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_20

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 645
    :cond_20
    sub-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o hasStyleSpan(Landroid/text/Spanned;)Z
    .registers 9

    .line 2258
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2259
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/text/style/CharacterStyle;

    aput-object v4, v3, v1

    const-class v4, Landroid/text/style/ParagraphStyle;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-class v5, Landroid/text/style/UpdateAppearance;

    aput-object v5, v3, v4

    .line 2261
    move v4, v1

    :goto_1b
    if-ge v4, v2, :cond_32

    aget-object v5, v3, v4

    .line 2262
    const/4 v6, -0x1

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v6

    if-ge v5, v6, :cond_2f

    .line 2263
    return v0

    .line 2261
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 2266
    :cond_32
    return v1
.end method

.method public static whitelist htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1722
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 1723
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1724
    sparse-switch v2, :sswitch_data_3e

    .line 1745
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 1729
    :sswitch_17
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    goto :goto_35

    .line 1726
    :sswitch_1d
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    goto :goto_35

    .line 1739
    :sswitch_23
    const-string v2, "&#39;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    goto :goto_35

    .line 1732
    :sswitch_29
    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    goto :goto_35

    .line 1742
    :sswitch_2f
    const-string v2, "&quot;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    nop

    .line 1722
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1748
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_3e
    .sparse-switch
        0x22 -> :sswitch_2f
        0x26 -> :sswitch_29
        0x27 -> :sswitch_23
        0x3c -> :sswitch_1d
        0x3e -> :sswitch_17
    .end sparse-switch
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;C)I
    .registers 3

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p0

    return p0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5

    .line 173
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 175
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 176
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 178
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    return p0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;CII)I
    .registers 10

    .line 182
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    instance-of v1, p0, Landroid/text/GetChars;

    const/4 v2, -0x1

    if-nez v1, :cond_24

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_24

    const-class v1, Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_24

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_16

    goto :goto_24

    .line 211
    :cond_16
    nop

    :goto_17
    if-ge p2, p3, :cond_23

    .line 212
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_20

    .line 213
    return p2

    .line 211
    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 215
    :cond_23
    return v2

    .line 187
    :cond_24
    :goto_24
    const/16 v0, 0x1f4

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 189
    :goto_2a
    if-ge p2, p3, :cond_49

    .line 190
    add-int/lit16 v1, p2, 0x1f4

    .line 191
    if-le v1, p3, :cond_31

    .line 192
    move v1, p3

    .line 194
    :cond_31
    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v0, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 196
    sub-int v4, v1, p2

    .line 197
    nop

    :goto_38
    if-ge v3, v4, :cond_46

    .line 198
    aget-char v5, v0, v3

    if-ne v5, p1, :cond_43

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 200
    add-int/2addr v3, p2

    return v3

    .line 197
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 204
    :cond_46
    nop

    .line 205
    move p2, v1

    goto :goto_2a

    .line 207
    :cond_49
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 208
    return v2
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4

    .line 277
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    .line 281
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9

    .line 286
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 287
    if-nez v0, :cond_7

    .line 288
    return p2

    .line 290
    :cond_7
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 293
    :goto_c
    invoke-static {p0, v2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 294
    sub-int v3, p3, v0

    const/4 v4, -0x1

    if-le p2, v3, :cond_17

    .line 295
    nop

    .line 308
    return v4

    .line 298
    :cond_17
    if-gez p2, :cond_1a

    .line 299
    return v4

    .line 302
    :cond_1a
    invoke-static {p0, p2, p1, v1, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 303
    return p2

    .line 306
    :cond_21
    add-int/lit8 p2, p2, 0x1

    goto :goto_c
.end method

.method public static whitelist isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 6

    .line 1846
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1847
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_19

    .line 1848
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1849
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1850
    return v1

    .line 1847
    :cond_13
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 1853
    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist isEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    .line 596
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static whitelist isGraphic(C)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1832
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    .line 1833
    const/16 v0, 0xf

    if-eq p0, v0, :cond_20

    const/16 v0, 0x10

    if-eq p0, v0, :cond_20

    const/16 v0, 0x13

    if-eq p0, v0, :cond_20

    if-eqz p0, :cond_20

    const/16 v0, 0xd

    if-eq p0, v0, :cond_20

    const/16 v0, 0xe

    if-eq p0, v0, :cond_20

    const/16 v0, 0xc

    if-eq p0, v0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public static whitelist isGraphic(Ljava/lang/CharSequence;)Z
    .registers 7

    .line 1806
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1807
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_32

    .line 1808
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1809
    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 1810
    const/16 v5, 0xf

    if-eq v4, v5, :cond_2c

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2c

    const/16 v5, 0x13

    if-eq v4, v5, :cond_2c

    if-eqz v4, :cond_2c

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2c

    const/16 v5, 0xe

    if-eq v4, v5, :cond_2c

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2c

    .line 1817
    const/4 p0, 0x1

    return p0

    .line 1807
    :cond_2c
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 1820
    :cond_32
    return v1
.end method

.method public static blacklist isNewline(I)Z
    .registers 3

    .line 2355
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2356
    const/16 v1, 0xe

    if-eq v0, v1, :cond_13

    const/16 v1, 0xd

    if-eq v0, v1, :cond_13

    const/16 v0, 0xa

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static greylist-max-o isPrintableAscii(C)Z
    .registers 2

    .line 1862
    const/16 v0, 0x20

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7e

    if-le p0, v0, :cond_13

    :cond_8
    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static greylist isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 1870
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1871
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 1872
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1873
    return v1

    .line 1871
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1876
    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isPunctuation(I)Z
    .registers 2

    .line 2372
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    .line 2373
    const/16 v0, 0x17

    if-eq p0, v0, :cond_23

    const/16 v0, 0x14

    if-eq p0, v0, :cond_23

    const/16 v0, 0x16

    if-eq p0, v0, :cond_23

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_23

    const/16 v0, 0x18

    if-eq p0, v0, :cond_23

    const/16 v0, 0x15

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public static blacklist isWhitespace(I)Z
    .registers 2

    .line 2362
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static blacklist isWhitespaceExceptNewline(I)Z
    .registers 2

    .line 2367
    invoke-static {p0}, Landroid/text/TextUtils;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Landroid/text/TextUtils;->isNewline(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static whitelist join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 4

    .line 439
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 440
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 441
    const-string p0, ""

    return-object p0

    .line 443
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 446
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 449
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 416
    array-length v0, p1

    .line 417
    if-nez v0, :cond_6

    .line 418
    const-string p0, ""

    return-object p0

    .line 420
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    const/4 v2, 0x1

    :goto_12
    if-ge v2, v0, :cond_1f

    .line 423
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 424
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 426
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 3

    .line 219
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p0

    return p0
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5

    .line 223
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 225
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 226
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0

    .line 228
    :cond_f
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    return p0
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 8

    .line 233
    const/4 v0, -0x1

    if-gez p3, :cond_4

    .line 234
    return v0

    .line 235
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p3, v1, :cond_10

    .line 236
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 238
    :cond_10
    add-int/lit8 p3, p3, 0x1

    .line 240
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 242
    instance-of v2, p0, Landroid/text/GetChars;

    if-nez v2, :cond_36

    const-class v2, Ljava/lang/StringBuffer;

    if-eq v1, v2, :cond_36

    const-class v2, Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_36

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_27

    goto :goto_36

    .line 269
    :cond_27
    add-int/lit8 p3, p3, -0x1

    :goto_29
    if-lt p3, p2, :cond_35

    .line 270
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_32

    .line 271
    return p3

    .line 269
    :cond_32
    add-int/lit8 p3, p3, -0x1

    goto :goto_29

    .line 273
    :cond_35
    return v0

    .line 245
    :cond_36
    :goto_36
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 247
    :goto_3c
    if-ge p2, p3, :cond_5b

    .line 248
    add-int/lit16 v2, p3, -0x1f4

    .line 249
    if-ge v2, p2, :cond_43

    .line 250
    move v2, p2

    .line 252
    :cond_43
    const/4 v3, 0x0

    invoke-static {p0, v2, p3, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 254
    sub-int/2addr p3, v2

    .line 255
    add-int/lit8 p3, p3, -0x1

    :goto_4a
    if-ltz p3, :cond_58

    .line 256
    aget-char v3, v1, p3

    if-ne v3, p1, :cond_55

    .line 257
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 258
    add-int/2addr p3, v2

    return p3

    .line 255
    :cond_55
    add-int/lit8 p3, p3, -0x1

    goto :goto_4a

    .line 262
    :cond_58
    nop

    .line 263
    move p3, v2

    goto :goto_3c

    .line 265
    :cond_5b
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 266
    return v0
.end method

.method public static greylist-max-o length(Ljava/lang/String;)I
    .registers 1

    .line 616
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static whitelist listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1510
    const-string v0, ""

    if-nez p1, :cond_5

    .line 1511
    return-object v0

    .line 1513
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1514
    if-nez v1, :cond_c

    .line 1515
    return-object v0

    .line 1520
    :cond_c
    const/4 v2, 0x0

    if-nez p0, :cond_16

    .line 1521
    nop

    .line 1522
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p0

    const/4 v3, 0x0

    goto :goto_2a

    .line 1524
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1525
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object p0

    .line 1528
    :goto_2a
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1529
    new-array v5, v1, [I

    .line 1530
    move v6, v2

    :goto_32
    if-ge v6, v1, :cond_51

    .line 1531
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1532
    add-int/lit8 v7, v1, -0x1

    if-eq v6, v7, :cond_48

    .line 1533
    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1535
    :cond_48
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    aput v7, v5, v6

    .line 1530
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 1538
    :cond_51
    add-int/lit8 p1, v1, -0x1

    :goto_53
    if-ltz p1, :cond_8d

    .line 1540
    aget p2, v5, p1

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, p2, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1542
    sub-int p2, v1, p1

    add-int/lit8 p2, p2, -0x1

    .line 1543
    if-lez p2, :cond_7d

    .line 1544
    if-nez v3, :cond_6a

    .line 1545
    const-string/jumbo p2, "\u2026"

    goto :goto_76

    .line 1546
    :cond_6a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p5, p2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1547
    :goto_76
    invoke-virtual {p0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 1548
    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1551
    :cond_7d
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p3, v4, v2, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    .line 1552
    cmpg-float p2, p2, p4

    if-gtz p2, :cond_8a

    .line 1553
    return-object v4

    .line 1538
    :cond_8a
    add-int/lit8 p1, p1, -0x1

    goto :goto_53

    .line 1556
    :cond_8d
    return-object v0
.end method

.method public static whitelist makeSafeForPresentation(Ljava/lang/String;IFI)Ljava/lang/CharSequence;
    .registers 16

    .line 2422
    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2423
    :goto_9
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    .line 2424
    :goto_10
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_16

    move v4, v1

    goto :goto_17

    :cond_16
    move v4, v2

    .line 2426
    :goto_17
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2428
    const-string v5, "ellipsizeDip"

    invoke-static {p2, v5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2429
    const/4 v5, 0x7

    invoke-static {p3, v5}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2431
    if-eqz v0, :cond_2c

    if-nez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :cond_2c
    :goto_2c
    const-string p3, "Cannot set SAFE_STRING_FLAG_SINGLE_LINE and SAFE_STRING_FLAG_FIRST_LINE at thesame time"

    invoke-static {v1, p3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2436
    if-lez p1, :cond_40

    .line 2437
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_41

    .line 2439
    :cond_40
    nop

    .line 2452
    :goto_41
    new-instance p1, Landroid/text/TextUtils$StringWithRemovedChars;

    .line 2453
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/text/TextUtils$StringWithRemovedChars;-><init>(Ljava/lang/String;)V

    .line 2455
    nop

    .line 2456
    nop

    .line 2459
    invoke-virtual {p1}, Landroid/text/TextUtils$StringWithRemovedChars;->length()I

    move-result p0

    .line 2460
    const/4 p3, -0x1

    move v5, p3

    move v6, v5

    move v1, v2

    :goto_58
    if-ge v1, p0, :cond_97

    .line 2461
    invoke-virtual {p1, v1}, Landroid/text/TextUtils$StringWithRemovedChars;->codePointAt(I)I

    move-result v7

    .line 2462
    invoke-static {v7}, Ljava/lang/Character;->getType(I)I

    move-result v8

    .line 2463
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 2464
    invoke-static {v7}, Landroid/text/TextUtils;->isNewline(I)Z

    move-result v10

    .line 2466
    if-eqz v0, :cond_72

    if-eqz v10, :cond_72

    .line 2467
    invoke-virtual {p1, v1}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 2468
    goto :goto_97

    .line 2469
    :cond_72
    if-eqz v3, :cond_7c

    if-eqz v10, :cond_7c

    .line 2470
    add-int v7, v1, v9

    invoke-virtual {p1, v1, v7}, Landroid/text/TextUtils$StringWithRemovedChars;->removeRange(II)V

    goto :goto_95

    .line 2471
    :cond_7c
    const/16 v11, 0xf

    if-ne v8, v11, :cond_88

    if-nez v10, :cond_88

    .line 2472
    add-int v7, v1, v9

    invoke-virtual {p1, v1, v7}, Landroid/text/TextUtils$StringWithRemovedChars;->removeRange(II)V

    goto :goto_95

    .line 2473
    :cond_88
    if-eqz v4, :cond_95

    invoke-static {v7}, Landroid/text/TextUtils;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_95

    .line 2475
    if-ne v5, p3, :cond_93

    .line 2476
    move v5, v1

    .line 2478
    :cond_93
    add-int v6, v1, v9

    .line 2481
    :cond_95
    :goto_95
    add-int/2addr v1, v9

    .line 2482
    goto :goto_58

    .line 2484
    :cond_97
    :goto_97
    if-eqz v4, :cond_a9

    .line 2486
    if-ne v5, p3, :cond_9f

    .line 2488
    invoke-virtual {p1, v2}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    goto :goto_a9

    .line 2490
    :cond_9f
    if-lez v5, :cond_a4

    .line 2491
    invoke-virtual {p1, v5}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharBefore(I)V

    .line 2493
    :cond_a4
    if-ge v6, p0, :cond_a9

    .line 2494
    invoke-virtual {p1, v6}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 2499
    :cond_a9
    :goto_a9
    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-nez p0, :cond_b3

    .line 2500
    invoke-virtual {p1}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2503
    :cond_b3
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_f5

    .line 2513
    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p2, p0

    const p0, 0x41bf851f    # 23.94f

    div-float/2addr p2, p0

    float-to-int p0, p2

    .line 2515
    invoke-virtual {p1}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, p0, :cond_d6

    goto :goto_f4

    .line 2519
    :cond_d6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p0}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 2520
    invoke-static {p1}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2519
    return-object p0

    .line 2517
    :cond_f4
    :goto_f4
    return-object p1

    .line 2524
    :cond_f5
    new-instance p0, Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    .line 2525
    const/high16 p3, 0x42280000    # 42.0f

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2527
    invoke-virtual {p1}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p0, p2, p3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 601
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return-object p0
.end method

.method static greylist-max-o obtain(I)[C
    .registers 4

    .line 1694
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1695
    :try_start_3
    sget-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1696
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1697
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 1699
    if-eqz v1, :cond_e

    array-length v0, v1

    if-ge v0, p0, :cond_12

    .line 1700
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 1702
    :cond_12
    return-object v1

    .line 1697
    :catchall_13
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static greylist packRangeInLong(II)J
    .registers 4

    .line 2096
    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static greylist-max-o readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 5

    .line 1213
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-interface {p1, p2, v0, v1, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1214
    return-void
.end method

.method static greylist-max-o recycle([C)V
    .registers 3

    .line 1706
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 1707
    return-void

    .line 1709
    :cond_6
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    :try_start_9
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1711
    monitor-exit v0

    .line 1712
    return-void

    .line 1711
    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static whitelist regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 8

    .line 314
    mul-int/lit8 v0, p4, 0x2

    .line 315
    if-lt v0, p4, :cond_29

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 321
    add-int v1, p1, p4

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 322
    add-int p0, p3, p4

    invoke-static {p2, p3, p0, v0, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 324
    nop

    .line 325
    move p0, v2

    :goto_15
    if-ge p0, p4, :cond_24

    .line 326
    aget-char p1, v0, p0

    add-int p2, p0, p4

    aget-char p2, v0, p2

    if-eq p1, p2, :cond_21

    .line 327
    nop

    .line 328
    goto :goto_25

    .line 325
    :cond_21
    add-int/lit8 p0, p0, 0x1

    goto :goto_15

    :cond_24
    const/4 v2, 0x1

    .line 332
    :goto_25
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 333
    return v2

    .line 317
    :cond_29
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static greylist-max-o removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2057
    nop

    .line 2058
    nop

    .line 2060
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_6
    array-length v4, p0

    if-ge v2, v4, :cond_2e

    .line 2061
    aget-object v4, p0, v2

    .line 2062
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2063
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 2065
    if-ne v5, v6, :cond_25

    .line 2066
    if-nez v0, :cond_2b

    .line 2067
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2068
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2069
    move v3, v2

    goto :goto_2b

    .line 2072
    :cond_25
    if-eqz v0, :cond_2b

    .line 2073
    aput-object v4, v0, v3

    .line 2074
    add-int/lit8 v3, v3, 0x1

    .line 2060
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2079
    :cond_2e
    if-eqz v0, :cond_3a

    .line 2080
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 2081
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2082
    return-object p0

    .line 2084
    :cond_3a
    return-object p0
.end method

.method public static whitelist replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9

    .line 1056
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1058
    const/4 p0, 0x0

    move v1, p0

    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 1059
    aget-object v2, p1, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 1061
    if-ltz v2, :cond_20

    .line 1062
    aget-object v3, p1, v1

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1058
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1066
    :cond_23
    nop

    :goto_24
    array-length v1, p1

    if-ge p0, v1, :cond_3d

    .line 1067
    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1068
    aget-object v2, p1, p0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1070
    if-ltz v1, :cond_3a

    .line 1071
    aget-object v3, p2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1066
    :cond_3a
    add-int/lit8 p0, p0, 0x1

    goto :goto_24

    .line 1075
    :cond_3d
    return-object v0
.end method

.method public static greylist-max-o safeIntern(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 624
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static whitelist split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 472
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 474
    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3

    .line 496
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 497
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 499
    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 580
    if-nez p0, :cond_4

    .line 581
    const/4 p0, 0x0

    return-object p0

    .line 582
    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_9

    .line 583
    return-object p0

    .line 584
    :cond_9
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_13

    .line 585
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 587
    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 6

    .line 344
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 345
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_b
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_16

    .line 347
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :cond_16
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_21

    .line 349
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_21
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 352
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 353
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 356
    return-object p0
.end method

.method public static greylist-max-o toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 11

    .line 1263
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    .line 1264
    if-nez p2, :cond_1e

    .line 1265
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1, v1, v0}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v0}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result p2

    if-eqz p2, :cond_1d

    move-object p1, p0

    :cond_1d
    return-object p1

    .line 1270
    :cond_1e
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object p2

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1, v1, v0}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 1272
    invoke-virtual {v0}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result p2

    if-nez p2, :cond_34

    .line 1274
    return-object p1

    .line 1277
    :cond_34
    invoke-virtual {v0}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object p2

    .line 1278
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1279
    check-cast p1, Landroid/text/Spanned;

    .line 1280
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1281
    array-length v3, v1

    :goto_46
    if-ge v2, v3, :cond_72

    aget-object v4, v1, v2

    .line 1282
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1283
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1284
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 1287
    if-ne v5, v0, :cond_5d

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    goto :goto_61

    .line 1288
    :cond_5d
    invoke-static {p2, v5}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v5

    .line 1289
    :goto_61
    if-ne v6, v0, :cond_68

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    goto :goto_6c

    .line 1290
    :cond_68
    invoke-static {p2, v6}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v6

    .line 1291
    :goto_6c
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1281
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1293
    :cond_72
    return-object p0
.end method

.method private static greylist-max-o toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .registers 3

    .line 1299
    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    .line 1300
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 1301
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result p0

    return p0

    .line 1312
    :cond_e
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1313
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result p1

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 1316
    :cond_1e
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static greylist-max-o trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 2278
    if-eqz p0, :cond_c

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_c

    .line 2280
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 2282
    :cond_c
    return-object p0
.end method

.method public static blacklist trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2346
    invoke-static {p0, p1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2347
    if-eqz p0, :cond_27

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge v0, p0, :cond_27

    .line 2348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2350
    :cond_27
    return-object p1
.end method

.method public static greylist-max-o trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2310
    const v0, 0x186a0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2325
    const/4 v0, 0x0

    if-lez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2326
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, p1, :cond_16

    goto :goto_32

    .line 2327
    :cond_16
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2328
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2329
    move p1, v1

    .line 2331
    :cond_2d
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2326
    :cond_32
    :goto_32
    return-object p0
.end method

.method public static blacklist truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 379
    if-ltz p1, :cond_47

    .line 383
    nop

    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_46

    .line 385
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 386
    const/16 v5, 0x80

    if-ge v4, v5, :cond_17

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 388
    :cond_17
    const/16 v5, 0x800

    if-ge v4, v5, :cond_1e

    .line 389
    add-int/lit8 v3, v3, 0x2

    goto :goto_3c

    .line 390
    :cond_1e
    const v5, 0xd800

    if-lt v4, v5, :cond_3a

    const v5, 0xdfff

    if-gt v4, v5, :cond_3a

    .line 392
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_31

    goto :goto_3a

    .line 395
    :cond_31
    add-int/lit8 v3, v3, 0x4

    .line 396
    if-le v3, p1, :cond_37

    move v4, v1

    goto :goto_38

    :cond_37
    const/4 v4, 0x1

    :goto_38
    add-int/2addr v2, v4

    goto :goto_3c

    .line 393
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x3

    .line 398
    :goto_3c
    if-le v3, p1, :cond_43

    .line 399
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 402
    :cond_46
    return-object p0

    .line 380
    :cond_47
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static greylist unpackRangeEndFromLong(J)I
    .registers 4

    .line 2118
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static greylist unpackRangeStartFromLong(J)I
    .registers 3

    .line 2107
    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist withoutPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2385
    if-eqz p0, :cond_14

    if-nez p1, :cond_5

    goto :goto_14

    .line 2386
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_13
    return-object p1

    .line 2385
    :cond_14
    :goto_14
    return-object p1
.end method

.method public static greylist-max-o wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2291
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2293
    return-void
.end method

.method public static whitelist writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 11

    .line 806
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_77

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 810
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    .line 811
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v3, Ljava/lang/Object;

    invoke-interface {v2, v0, p0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .line 818
    move v3, v0

    :goto_1e
    array-length v4, p0

    if-ge v3, v4, :cond_73

    .line 819
    aget-object v4, p0, v3

    .line 820
    aget-object v5, p0, v3

    .line 822
    instance-of v6, v5, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_2f

    .line 823
    check-cast v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v5

    .line 826
    :cond_2f
    instance-of v6, v5, Landroid/text/ParcelableSpan;

    if-eqz v6, :cond_70

    .line 827
    check-cast v5, Landroid/text/ParcelableSpan;

    .line 828
    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v6

    .line 829
    if-lt v6, v1, :cond_4a

    const/16 v7, 0x1f

    if-le v6, v7, :cond_40

    goto :goto_4a

    .line 834
    :cond_40
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-interface {v5, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 836
    invoke-static {p1, v2, v4}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_70

    .line 830
    :cond_4a
    :goto_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External class \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is attempting to use the frameworks-only ParcelableSpan interface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TextUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 841
    :cond_73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    goto :goto_88

    .line 843
    :cond_77
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    if-eqz p0, :cond_84

    .line 845
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_88

    .line 847
    :cond_84
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 850
    :goto_88
    return-void
.end method

.method private static greylist-max-o writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4

    .line 853
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    return-void
.end method
