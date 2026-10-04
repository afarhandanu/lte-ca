.class public Landroid/telephony/AccessNetworkUtils;
.super Ljava/lang/Object;
.source "AccessNetworkUtils.java"


# static fields
.field private static final blacklist FREQUENCY_KHZ:I = 0x3e8

.field private static final blacklist FREQUENCY_RANGE_HIGH_KHZ:I = 0x5b8d80

.field private static final blacklist FREQUENCY_RANGE_LOW_KHZ:I = 0xf4240

.field private static final blacklist FREQUENCY_RANGE_MID_KHZ:I = 0x2dc6c0

.field public static final greylist-max-o INVALID_BAND:I = -0x1

.field public static final blacklist INVALID_FREQUENCY:I = -0x1

.field private static final blacklist JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "jp"

.field private static final blacklist TAG:Ljava/lang/String; = "AccessNetworkUtils"

.field private static final blacklist UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    .line 46
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertArfcnToFrequency(III)I
    .registers 3

    .line 894
    sub-int/2addr p0, p2

    mul-int/lit16 p0, p0, 0xc8

    add-int/2addr p1, p0

    return p1
.end method

.method private static blacklist convertEarfcnToFrequency(III)I
    .registers 3

    .line 763
    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method private static blacklist convertUarfcnTddToFrequency(II)I
    .registers 3

    .line 827
    const/16 v0, 0x68

    if-eq p0, v0, :cond_9

    .line 828
    mul-int/lit8 p1, p1, 0x5

    mul-int/lit16 p1, p1, 0x3e8

    return p1

    .line 830
    :cond_9
    mul-int/lit16 p1, p1, 0x3e8

    const p0, 0x20ced4

    sub-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x5

    return p1
.end method

.method private static blacklist convertUarfcnToFrequency(II)I
    .registers 2

    .line 816
    mul-int/lit16 p1, p1, 0xc8

    add-int/2addr p0, p1

    return p0
.end method

.method public static greylist-max-o getDuplexModeForEutranBand(I)I
    .registers 4

    .line 64
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    .line 65
    return v1

    .line 68
    :cond_5
    const/16 v0, 0x58

    if-le p0, v0, :cond_a

    .line 69
    return v1

    .line 70
    :cond_a
    const/16 v0, 0x41

    const/4 v2, 0x1

    if-lt p0, v0, :cond_10

    .line 71
    return v2

    .line 72
    :cond_10
    const/16 v0, 0x21

    if-lt p0, v0, :cond_16

    .line 73
    const/4 p0, 0x2

    return p0

    .line 74
    :cond_16
    if-lt p0, v2, :cond_19

    .line 75
    return v2

    .line 78
    :cond_19
    return v1
.end method

.method public static blacklist getDuplexModeForNgranBandPCell(I)I
    .registers 3

    .line 244
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    .line 245
    return v1

    .line 248
    :cond_5
    sparse-switch p0, :sswitch_data_e

    .line 270
    goto :goto_d

    .line 262
    :sswitch_9
    const/4 v1, 0x2

    goto :goto_d

    .line 268
    :sswitch_b
    goto :goto_d

    .line 254
    :sswitch_c
    const/4 v1, 0x1

    .line 248
    :goto_d
    return v1

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_c
        0x3 -> :sswitch_c
        0x5 -> :sswitch_c
        0x7 -> :sswitch_c
        0x8 -> :sswitch_c
        0xc -> :sswitch_c
        0xe -> :sswitch_c
        0x12 -> :sswitch_c
        0x14 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1a -> :sswitch_c
        0x1c -> :sswitch_c
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x22 -> :sswitch_9
        0x26 -> :sswitch_9
        0x27 -> :sswitch_9
        0x28 -> :sswitch_9
        0x29 -> :sswitch_9
        0x30 -> :sswitch_9
        0x32 -> :sswitch_9
        0x33 -> :sswitch_9
        0x35 -> :sswitch_9
        0x41 -> :sswitch_c
        0x42 -> :sswitch_c
        0x46 -> :sswitch_c
        0x47 -> :sswitch_c
        0x4a -> :sswitch_c
        0x4b -> :sswitch_b
        0x4c -> :sswitch_b
        0x4d -> :sswitch_9
        0x4e -> :sswitch_9
        0x4f -> :sswitch_9
        0x50 -> :sswitch_b
        0x51 -> :sswitch_b
        0x52 -> :sswitch_b
        0x53 -> :sswitch_b
        0x54 -> :sswitch_b
        0x56 -> :sswitch_b
        0x59 -> :sswitch_b
        0x5a -> :sswitch_9
        0x5f -> :sswitch_b
        0x101 -> :sswitch_9
        0x102 -> :sswitch_9
        0x104 -> :sswitch_9
        0x105 -> :sswitch_9
    .end sparse-switch
.end method

.method public static blacklist getFrequencyFromArfcn(IIZ)I
    .registers 11

    .line 855
    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ne p1, v0, :cond_7

    .line 856
    return v1

    .line 859
    :cond_7
    nop

    .line 860
    nop

    .line 861
    nop

    .line 862
    nop

    .line 864
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v0

    .line 863
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_60

    aget-object v5, v0, v4

    .line 865
    iget v6, v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_5d

    .line 866
    iget v0, v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeFirst:I

    if-lt p1, v0, :cond_30

    iget v0, v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeLast:I

    if-gt p1, v0, :cond_30

    .line 868
    iget p0, v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->uplinkFrequencyFirst:I

    .line 869
    iget v3, v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->downlinkOffset:I

    .line 870
    iget v0, v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnOffset:I

    .line 871
    invoke-static {p1, p0, v0}, Landroid/telephony/AccessNetworkUtils;->convertArfcnToFrequency(III)I

    move-result p0

    .line 873
    move v7, v3

    move v3, p0

    move p0, v7

    goto :goto_61

    .line 875
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Band and the range of ARFCN are not consistent: band = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ,arfcn = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ,isUplink = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessNetworkUtils"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v1

    .line 863
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_60
    move p0, v3

    .line 882
    :goto_61
    if-eqz p2, :cond_64

    goto :goto_65

    :cond_64
    add-int/2addr v3, p0

    :goto_65
    return v3
.end method

.method public static blacklist getFrequencyFromEarfcn(IIZ)I
    .registers 9

    .line 737
    nop

    .line 738
    nop

    .line 739
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_58

    aget-object v4, v0, v3

    .line 740
    iget v5, v4, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->band:I

    if-ne p0, v5, :cond_55

    .line 741
    invoke-static {p1, v4, p2}, Landroid/telephony/AccessNetworkUtils;->isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 742
    if-eqz p2, :cond_1c

    iget p0, v4, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkLowKhz:I

    goto :goto_1e

    :cond_1c
    iget p0, v4, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkLowKhz:I

    :goto_1e
    move v2, p0

    .line 743
    if-eqz p2, :cond_24

    iget p0, v4, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    goto :goto_26

    .line 744
    :cond_24
    iget p0, v4, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    .line 745
    :goto_26
    goto :goto_59

    .line 747
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Band and the range of EARFCN are not consistent: band = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ,earfcn = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ,isUplink = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessNetworkUtils"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 p0, -0x1

    return p0

    .line 739
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_58
    move p0, v2

    .line 753
    :goto_59
    invoke-static {v2, p1, p0}, Landroid/telephony/AccessNetworkUtils;->convertEarfcnToFrequency(III)I

    move-result p0

    return p0
.end method

.method public static blacklist getFrequencyFromNrArfcn(I)I
    .registers 8

    .line 712
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_7

    .line 713
    const/4 p0, -0x1

    return p0

    .line 716
    :cond_7
    nop

    .line 717
    nop

    .line 718
    nop

    .line 720
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    move-result-object v0

    .line 719
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_2a

    aget-object v4, v0, v3

    .line 721
    iget v5, v4, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeFirst:I

    if-lt p0, v5, :cond_27

    iget v5, v4, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeLast:I

    if-gt p0, v5, :cond_27

    .line 723
    iget v2, v4, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->globalKhz:I

    .line 724
    iget v0, v4, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeOffset:I

    .line 725
    iget v1, v4, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->arfcnOffset:I

    .line 726
    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_2c

    .line 719
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2a
    move v0, v2

    move v1, v0

    .line 729
    :goto_2c
    sub-int/2addr p0, v1

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    return v2
.end method

.method public static blacklist getFrequencyFromUarfcn(IIZ)I
    .registers 10

    .line 781
    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ne p1, v0, :cond_7

    .line 782
    return v1

    .line 785
    :cond_7
    nop

    .line 787
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    move-result-object v0

    .line 786
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_57

    aget-object v5, v0, v4

    .line 788
    iget v6, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_54

    .line 789
    invoke-static {p1, v5, p2}, Landroid/telephony/AccessNetworkUtils;->isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 790
    if-eqz p2, :cond_23

    iget p2, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkOffset:I

    move v3, p2

    goto :goto_26

    .line 791
    :cond_23
    iget p2, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkOffset:I

    move v3, p2

    .line 792
    :goto_26
    goto :goto_57

    .line 794
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Band and the range of UARFCN are not consistent: band = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ,uarfcn = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ,isUplink = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessNetworkUtils"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v1

    .line 786
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 801
    :cond_57
    :goto_57
    sget-object p2, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_68

    .line 802
    invoke-static {v3, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnToFrequency(II)I

    move-result p0

    return p0

    .line 804
    :cond_68
    invoke-static {p0, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnTddToFrequency(II)I

    move-result p0

    return p0
.end method

.method public static blacklist getFrequencyRangeFromArfcn(I)I
    .registers 3

    .line 898
    const v0, 0xf4240

    if-ge p0, v0, :cond_7

    .line 899
    const/4 p0, 0x1

    return p0

    .line 900
    :cond_7
    const v1, 0x2dc6c0

    if-ge p0, v1, :cond_10

    if-lt p0, v0, :cond_10

    .line 902
    const/4 p0, 0x2

    return p0

    .line 903
    :cond_10
    const v0, 0x5b8d80

    if-ge p0, v0, :cond_19

    if-lt p0, v1, :cond_19

    .line 905
    const/4 p0, 0x3

    return p0

    .line 907
    :cond_19
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist getFrequencyRangeGroupFromEutranBand(I)I
    .registers 1

    .line 567
    packed-switch p0, :pswitch_data_c

    .line 632
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 630
    :pswitch_5
    const/4 p0, 0x3

    return p0

    .line 592
    :pswitch_7
    const/4 p0, 0x1

    return p0

    .line 621
    :pswitch_9
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromGeranBand(I)I
    .registers 1

    .line 501
    packed-switch p0, :pswitch_data_a

    .line 519
    const/4 p0, 0x0

    return p0

    .line 517
    :pswitch_5
    const/4 p0, 0x2

    return p0

    .line 514
    :pswitch_7
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromNrBand(I)I
    .registers 1

    .line 642
    sparse-switch p0, :sswitch_data_e

    .line 701
    const/4 p0, 0x0

    return p0

    .line 699
    :sswitch_5
    const/4 p0, 0x4

    return p0

    .line 693
    :sswitch_7
    const/4 p0, 0x3

    return p0

    .line 657
    :sswitch_9
    const/4 p0, 0x1

    return p0

    .line 687
    :sswitch_b
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x3 -> :sswitch_b
        0x5 -> :sswitch_9
        0x7 -> :sswitch_b
        0x8 -> :sswitch_9
        0xc -> :sswitch_9
        0xe -> :sswitch_9
        0x12 -> :sswitch_9
        0x14 -> :sswitch_9
        0x19 -> :sswitch_b
        0x1a -> :sswitch_9
        0x1c -> :sswitch_9
        0x1d -> :sswitch_9
        0x1e -> :sswitch_b
        0x22 -> :sswitch_b
        0x26 -> :sswitch_b
        0x27 -> :sswitch_b
        0x28 -> :sswitch_b
        0x29 -> :sswitch_b
        0x2e -> :sswitch_7
        0x30 -> :sswitch_7
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x35 -> :sswitch_b
        0x41 -> :sswitch_b
        0x42 -> :sswitch_b
        0x46 -> :sswitch_b
        0x47 -> :sswitch_9
        0x4a -> :sswitch_b
        0x4b -> :sswitch_b
        0x4c -> :sswitch_b
        0x4d -> :sswitch_7
        0x4e -> :sswitch_7
        0x4f -> :sswitch_7
        0x50 -> :sswitch_b
        0x51 -> :sswitch_9
        0x52 -> :sswitch_9
        0x53 -> :sswitch_9
        0x54 -> :sswitch_b
        0x56 -> :sswitch_b
        0x59 -> :sswitch_9
        0x5a -> :sswitch_b
        0x5b -> :sswitch_b
        0x5c -> :sswitch_b
        0x5d -> :sswitch_b
        0x5e -> :sswitch_b
        0x5f -> :sswitch_b
        0x60 -> :sswitch_5
        0x101 -> :sswitch_5
        0x102 -> :sswitch_5
        0x104 -> :sswitch_5
        0x105 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromUtranBand(I)I
    .registers 1

    .line 527
    sparse-switch p0, :sswitch_data_c

    .line 558
    const/4 p0, 0x0

    return p0

    .line 556
    :sswitch_5
    const/4 p0, 0x3

    return p0

    .line 537
    :sswitch_7
    const/4 p0, 0x1

    return p0

    .line 554
    :sswitch_9
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_9
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_9
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_9
        0x16 -> :sswitch_5
        0x19 -> :sswitch_9
        0x1a -> :sswitch_7
        0x65 -> :sswitch_9
        0x66 -> :sswitch_9
        0x67 -> :sswitch_9
        0x68 -> :sswitch_9
        0x69 -> :sswitch_9
        0x6a -> :sswitch_9
    .end sparse-switch
.end method

.method public static blacklist getOperatingBandForArfcn(I)I
    .registers 3

    .line 385
    const/16 v0, 0xa

    if-ltz p0, :cond_9

    const/16 v1, 0x7c

    if-gt p0, v1, :cond_9

    .line 386
    return v0

    .line 387
    :cond_9
    const/16 v1, 0x80

    if-lt p0, v1, :cond_14

    const/16 v1, 0xfb

    if-gt p0, v1, :cond_14

    .line 388
    const/16 p0, 0x8

    return p0

    .line 389
    :cond_14
    const/16 v1, 0x103

    if-lt p0, v1, :cond_1e

    const/16 v1, 0x125

    if-gt p0, v1, :cond_1e

    .line 390
    const/4 p0, 0x3

    return p0

    .line 391
    :cond_1e
    const/16 v1, 0x132

    if-lt p0, v1, :cond_28

    const/16 v1, 0x154

    if-gt p0, v1, :cond_28

    .line 392
    const/4 p0, 0x4

    return p0

    .line 393
    :cond_28
    const/16 v1, 0x1b6

    if-lt p0, v1, :cond_32

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_32

    .line 394
    const/4 p0, 0x6

    return p0

    .line 395
    :cond_32
    const/16 v1, 0x200

    if-lt p0, v1, :cond_3d

    const/16 v1, 0x375

    if-gt p0, v1, :cond_3d

    .line 398
    const/16 p0, 0xc

    return p0

    .line 399
    :cond_3d
    const/16 v1, 0x3ac

    if-lt p0, v1, :cond_48

    const/16 v1, 0x3ce

    if-gt p0, v1, :cond_48

    .line 400
    const/16 p0, 0xe

    return p0

    .line 401
    :cond_48
    const/16 v1, 0x3cf

    if-lt p0, v1, :cond_51

    const/16 v1, 0x3ff

    if-gt p0, v1, :cond_51

    .line 402
    return v0

    .line 404
    :cond_51
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist-max-o getOperatingBandForEarfcn(I)I
    .registers 3

    .line 90
    const v0, 0x113f5

    const/4 v1, -0x1

    if-le p0, v0, :cond_7

    .line 91
    return v1

    .line 92
    :cond_7
    const v0, 0x113c4

    if-lt p0, v0, :cond_f

    .line 93
    const/16 p0, 0x58

    return p0

    .line 94
    :cond_f
    const v0, 0x11392

    if-lt p0, v0, :cond_17

    .line 95
    const/16 p0, 0x57

    return p0

    .line 96
    :cond_17
    const v0, 0x112de

    if-lt p0, v0, :cond_1f

    .line 97
    const/16 p0, 0x55

    return p0

    .line 98
    :cond_1f
    const v0, 0x10f59

    if-le p0, v0, :cond_25

    .line 99
    return v1

    .line 100
    :cond_25
    const v0, 0x10dac

    if-lt p0, v0, :cond_2d

    .line 101
    const/16 p0, 0x4a

    return p0

    .line 102
    :cond_2d
    const v0, 0x10d7a

    if-lt p0, v0, :cond_35

    .line 103
    const/16 p0, 0x49

    return p0

    .line 104
    :cond_35
    const v0, 0x10d48

    if-lt p0, v0, :cond_3d

    .line 105
    const/16 p0, 0x48

    return p0

    .line 106
    :cond_3d
    const v0, 0x10bea

    if-lt p0, v0, :cond_45

    .line 107
    const/16 p0, 0x47

    return p0

    .line 108
    :cond_45
    const v0, 0x10af0

    if-lt p0, v0, :cond_4d

    .line 109
    const/16 p0, 0x46

    return p0

    .line 110
    :cond_4d
    const v0, 0x108fb

    if-le p0, v0, :cond_53

    .line 111
    return v1

    .line 112
    :cond_53
    const v0, 0x107d0

    if-lt p0, v0, :cond_5b

    .line 113
    const/16 p0, 0x44

    return p0

    .line 114
    :cond_5b
    const v0, 0x10726

    if-lt p0, v0, :cond_61

    .line 115
    return v1

    .line 116
    :cond_61
    const v0, 0x10384

    if-lt p0, v0, :cond_69

    .line 117
    const/16 p0, 0x42

    return p0

    .line 118
    :cond_69
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_70

    .line 119
    const/16 p0, 0x41

    return p0

    .line 120
    :cond_70
    const v0, 0xeb5e

    if-le p0, v0, :cond_76

    .line 121
    return v1

    .line 122
    :cond_76
    const v0, 0xeaec

    if-lt p0, v0, :cond_7e

    .line 123
    const/16 p0, 0x35

    return p0

    .line 124
    :cond_7e
    const v0, 0xe704

    if-lt p0, v0, :cond_86

    .line 125
    const/16 p0, 0x34

    return p0

    .line 126
    :cond_86
    const v0, 0xe6d2

    if-lt p0, v0, :cond_8e

    .line 127
    const/16 p0, 0x33

    return p0

    .line 128
    :cond_8e
    const v0, 0xe380

    if-lt p0, v0, :cond_96

    .line 129
    const/16 p0, 0x32

    return p0

    .line 130
    :cond_96
    const v0, 0xdda4

    if-lt p0, v0, :cond_9e

    .line 131
    const/16 p0, 0x31

    return p0

    .line 132
    :cond_9e
    const v0, 0xd7c8

    if-lt p0, v0, :cond_a6

    .line 133
    const/16 p0, 0x30

    return p0

    .line 134
    :cond_a6
    const v0, 0xd50c

    if-lt p0, v0, :cond_ae

    .line 135
    const/16 p0, 0x2f

    return p0

    .line 136
    :cond_ae
    const v0, 0xb6c6

    if-lt p0, v0, :cond_b6

    .line 137
    const/16 p0, 0x2e

    return p0

    .line 138
    :cond_b6
    const v0, 0xb5fe

    if-lt p0, v0, :cond_be

    .line 139
    const/16 p0, 0x2d

    return p0

    .line 140
    :cond_be
    const v0, 0xb216

    if-lt p0, v0, :cond_c6

    .line 141
    const/16 p0, 0x2c

    return p0

    .line 142
    :cond_c6
    const v0, 0xaa46

    if-lt p0, v0, :cond_ce

    .line 143
    const/16 p0, 0x2b

    return p0

    .line 144
    :cond_ce
    const v0, 0xa276

    if-lt p0, v0, :cond_d6

    .line 145
    const/16 p0, 0x2a

    return p0

    .line 146
    :cond_d6
    const v0, 0x9ae2

    if-lt p0, v0, :cond_de

    .line 147
    const/16 p0, 0x29

    return p0

    .line 148
    :cond_de
    const v0, 0x96fa

    if-lt p0, v0, :cond_e6

    .line 149
    const/16 p0, 0x28

    return p0

    .line 150
    :cond_e6
    const v0, 0x956a

    if-lt p0, v0, :cond_ee

    .line 151
    const/16 p0, 0x27

    return p0

    .line 152
    :cond_ee
    const v0, 0x9376

    if-lt p0, v0, :cond_f6

    .line 153
    const/16 p0, 0x26

    return p0

    .line 154
    :cond_f6
    const v0, 0x92ae

    if-lt p0, v0, :cond_fe

    .line 155
    const/16 p0, 0x25

    return p0

    .line 156
    :cond_fe
    const v0, 0x9056

    if-lt p0, v0, :cond_106

    .line 157
    const/16 p0, 0x24

    return p0

    .line 158
    :cond_106
    const v0, 0x8dfe

    if-lt p0, v0, :cond_10e

    .line 159
    const/16 p0, 0x23

    return p0

    .line 160
    :cond_10e
    const v0, 0x8d68

    if-lt p0, v0, :cond_116

    .line 161
    const/16 p0, 0x22

    return p0

    .line 162
    :cond_116
    const v0, 0x8ca0

    if-lt p0, v0, :cond_11e

    .line 163
    const/16 p0, 0x21

    return p0

    .line 164
    :cond_11e
    const/16 v0, 0x2877

    if-le p0, v0, :cond_123

    .line 165
    return v1

    .line 166
    :cond_123
    const/16 v0, 0x26c0

    if-lt p0, v0, :cond_128

    .line 167
    return v1

    .line 168
    :cond_128
    const/16 v0, 0x268e

    if-lt p0, v0, :cond_12f

    .line 169
    const/16 p0, 0x1f

    return p0

    .line 170
    :cond_12f
    const/16 v0, 0x262a

    if-lt p0, v0, :cond_136

    .line 171
    const/16 p0, 0x1e

    return p0

    .line 172
    :cond_136
    const/16 v0, 0x25bc

    if-lt p0, v0, :cond_13b

    .line 173
    return v1

    .line 174
    :cond_13b
    const/16 v0, 0x23fa

    if-lt p0, v0, :cond_142

    .line 175
    const/16 p0, 0x1c

    return p0

    .line 176
    :cond_142
    const/16 v0, 0x2350

    if-lt p0, v0, :cond_149

    .line 177
    const/16 p0, 0x1b

    return p0

    .line 178
    :cond_149
    const/16 v0, 0x21f2

    if-lt p0, v0, :cond_150

    .line 179
    const/16 p0, 0x1a

    return p0

    .line 180
    :cond_150
    const/16 v0, 0x1f68

    if-lt p0, v0, :cond_157

    .line 181
    const/16 p0, 0x19

    return p0

    .line 182
    :cond_157
    const/16 v0, 0x1e14

    if-lt p0, v0, :cond_15e

    .line 183
    const/16 p0, 0x18

    return p0

    .line 184
    :cond_15e
    const/16 v0, 0x1d4c

    if-lt p0, v0, :cond_165

    .line 185
    const/16 p0, 0x17

    return p0

    .line 186
    :cond_165
    const/16 v0, 0x19c8

    if-lt p0, v0, :cond_16c

    .line 187
    const/16 p0, 0x16

    return p0

    .line 188
    :cond_16c
    const/16 v0, 0x1932

    if-lt p0, v0, :cond_173

    .line 189
    const/16 p0, 0x15

    return p0

    .line 190
    :cond_173
    const/16 v0, 0x1806

    if-lt p0, v0, :cond_17a

    .line 191
    const/16 p0, 0x14

    return p0

    .line 192
    :cond_17a
    const/16 v0, 0x1770

    if-lt p0, v0, :cond_181

    .line 193
    const/16 p0, 0x13

    return p0

    .line 194
    :cond_181
    const/16 v0, 0x16da

    if-lt p0, v0, :cond_188

    .line 195
    const/16 p0, 0x12

    return p0

    .line 196
    :cond_188
    const/16 v0, 0x1662

    if-lt p0, v0, :cond_18f

    .line 197
    const/16 p0, 0x11

    return p0

    .line 198
    :cond_18f
    const/16 v0, 0x1503

    if-le p0, v0, :cond_194

    .line 199
    return v1

    .line 200
    :cond_194
    const/16 v0, 0x14a0

    if-lt p0, v0, :cond_19b

    .line 201
    const/16 p0, 0xe

    return p0

    .line 202
    :cond_19b
    const/16 v0, 0x143c

    if-lt p0, v0, :cond_1a2

    .line 203
    const/16 p0, 0xd

    return p0

    .line 204
    :cond_1a2
    const/16 v0, 0x1392

    if-lt p0, v0, :cond_1a9

    .line 205
    const/16 p0, 0xc

    return p0

    .line 206
    :cond_1a9
    const/16 v0, 0x128e

    if-lt p0, v0, :cond_1b0

    .line 207
    const/16 p0, 0xb

    return p0

    .line 208
    :cond_1b0
    const/16 v0, 0x1036

    if-lt p0, v0, :cond_1b7

    .line 209
    const/16 p0, 0xa

    return p0

    .line 210
    :cond_1b7
    const/16 v0, 0xed8

    if-lt p0, v0, :cond_1be

    .line 211
    const/16 p0, 0x9

    return p0

    .line 212
    :cond_1be
    const/16 v0, 0xd7a

    if-lt p0, v0, :cond_1c5

    .line 213
    const/16 p0, 0x8

    return p0

    .line 214
    :cond_1c5
    const/16 v0, 0xabe

    if-lt p0, v0, :cond_1cb

    .line 215
    const/4 p0, 0x7

    return p0

    .line 216
    :cond_1cb
    const/16 v0, 0xa5a

    if-lt p0, v0, :cond_1d1

    .line 217
    const/4 p0, 0x6

    return p0

    .line 218
    :cond_1d1
    const/16 v0, 0x960

    if-lt p0, v0, :cond_1d7

    .line 219
    const/4 p0, 0x5

    return p0

    .line 220
    :cond_1d7
    const/16 v0, 0x79e

    if-lt p0, v0, :cond_1dd

    .line 221
    const/4 p0, 0x4

    return p0

    .line 222
    :cond_1dd
    const/16 v0, 0x4b0

    if-lt p0, v0, :cond_1e3

    .line 223
    const/4 p0, 0x3

    return p0

    .line 224
    :cond_1e3
    const/16 v0, 0x258

    if-lt p0, v0, :cond_1e9

    .line 225
    const/4 p0, 0x2

    return p0

    .line 226
    :cond_1e9
    if-ltz p0, :cond_1ed

    .line 227
    const/4 p0, 0x1

    return p0

    .line 230
    :cond_1ed
    return v1
.end method

.method public static blacklist getOperatingBandForNrarfcn(I)I
    .registers 10

    .line 284
    const v0, 0x67070

    if-lt p0, v0, :cond_c

    const v1, 0x69f50

    if-gt p0, v1, :cond_c

    .line 285
    const/4 p0, 0x1

    return p0

    .line 286
    :cond_c
    const v1, 0x5e3d0

    if-lt p0, v1, :cond_18

    const v2, 0x612b0

    if-gt p0, v2, :cond_18

    .line 287
    const/4 p0, 0x2

    return p0

    .line 288
    :cond_18
    const v2, 0x58228

    const v3, 0x5bcc0

    if-lt p0, v2, :cond_24

    if-gt p0, v3, :cond_24

    .line 289
    const/4 p0, 0x3

    return p0

    .line 290
    :cond_24
    const v2, 0x2a6e8

    const v4, 0x2ba70

    if-lt p0, v2, :cond_30

    if-gt p0, v4, :cond_30

    .line 291
    const/4 p0, 0x5

    return p0

    .line 292
    :cond_30
    const v2, 0x83590

    const v5, 0x7fee0

    if-lt p0, v5, :cond_3c

    if-gt p0, v2, :cond_3c

    .line 293
    const/4 p0, 0x7

    return p0

    .line 294
    :cond_3c
    const v6, 0x2d2a8

    if-lt p0, v6, :cond_49

    const v6, 0x2ee00

    if-gt p0, v6, :cond_49

    .line 295
    const/16 p0, 0x8

    return p0

    .line 296
    :cond_49
    const v6, 0x23988

    if-lt p0, v6, :cond_56

    const v6, 0x246d0

    if-gt p0, v6, :cond_56

    .line 297
    const/16 p0, 0xc

    return p0

    .line 298
    :cond_56
    const v6, 0x25030

    if-lt p0, v6, :cond_63

    const v7, 0x25800

    if-gt p0, v7, :cond_63

    .line 299
    const/16 p0, 0xe

    return p0

    .line 300
    :cond_63
    const v7, 0x29fe0

    if-lt p0, v7, :cond_70

    const v7, 0x2ab98

    if-gt p0, v7, :cond_70

    .line 301
    const/16 p0, 0x12

    return p0

    .line 302
    :cond_70
    const v7, 0x269f8

    if-lt p0, v7, :cond_7d

    const v7, 0x28168

    if-gt p0, v7, :cond_7d

    .line 303
    const/16 p0, 0x14

    return p0

    .line 304
    :cond_7d
    const v7, 0x61698

    if-lt p0, v1, :cond_87

    if-gt p0, v7, :cond_87

    .line 305
    const/16 p0, 0x19

    return p0

    .line 306
    :cond_87
    const v1, 0x29f18

    if-lt p0, v1, :cond_91

    if-gt p0, v4, :cond_91

    .line 307
    const/16 p0, 0x1a

    return p0

    .line 308
    :cond_91
    if-lt p0, v6, :cond_9b

    const v1, 0x27358

    if-gt p0, v1, :cond_9b

    .line 309
    const/16 p0, 0x1c

    return p0

    .line 310
    :cond_9b
    const v1, 0x23028

    if-lt p0, v1, :cond_a8

    const v1, 0x238c0

    if-gt p0, v1, :cond_a8

    .line 311
    const/16 p0, 0x1d

    return p0

    .line 312
    :cond_a8
    const v1, 0x72bf0

    if-lt p0, v1, :cond_b5

    const v1, 0x733c0

    if-gt p0, v1, :cond_b5

    .line 313
    const/16 p0, 0x1e

    return p0

    .line 314
    :cond_b5
    const v1, 0x62250

    if-lt p0, v1, :cond_c2

    const v1, 0x62e08

    if-gt p0, v1, :cond_c2

    .line 315
    const/16 p0, 0x22

    return p0

    .line 316
    :cond_c2
    const v1, 0x7d7d0

    if-lt p0, v1, :cond_cc

    if-gt p0, v5, :cond_cc

    .line 317
    const/16 p0, 0x26

    return p0

    .line 318
    :cond_cc
    if-lt p0, v3, :cond_d6

    const v1, 0x5dc00

    if-gt p0, v1, :cond_d6

    .line 319
    const/16 p0, 0x27

    return p0

    .line 320
    :cond_d6
    const v1, 0x704e0

    if-lt p0, v1, :cond_e3

    const v1, 0x75300

    if-gt p0, v1, :cond_e3

    .line 321
    const/16 p0, 0x28

    return p0

    .line 322
    :cond_e3
    const v1, 0x79e00

    if-lt p0, v1, :cond_f0

    const v3, 0x8358f

    if-gt p0, v3, :cond_f0

    .line 323
    const/16 p0, 0x29

    return p0

    .line 324
    :cond_f0
    const v3, 0xb57a6

    const v4, 0xc2178

    if-lt p0, v3, :cond_fd

    if-gt p0, v4, :cond_fd

    .line 325
    const/16 p0, 0x2e

    return p0

    .line 326
    :cond_fd
    const v3, 0x9b6fb

    if-lt p0, v3, :cond_10a

    const v3, 0x9de0a

    if-gt p0, v3, :cond_10a

    .line 327
    const/16 p0, 0x30

    return p0

    .line 328
    :cond_10a
    const v3, 0x4a128

    const v5, 0x45ec0

    if-lt p0, v5, :cond_117

    if-gt p0, v3, :cond_117

    .line 329
    const/16 p0, 0x32

    return p0

    .line 330
    :cond_117
    const v6, 0x45ad8    # 3.9993E-40f

    if-lt p0, v6, :cond_121

    if-gt p0, v5, :cond_121

    .line 331
    const/16 p0, 0x33

    return p0

    .line 332
    :cond_121
    const v8, 0x7943c

    if-lt p0, v8, :cond_12e

    const v8, 0x79d38

    if-gt p0, v8, :cond_12e

    .line 333
    const/16 p0, 0x35

    return p0

    .line 334
    :cond_12e
    if-lt p0, v0, :cond_138

    const v0, 0x6b6c0

    if-gt p0, v0, :cond_138

    .line 335
    const/16 p0, 0x41

    return p0

    .line 336
    :cond_138
    if-lt p0, v7, :cond_142

    const v0, 0x62a20

    if-gt p0, v0, :cond_142

    .line 337
    const/16 p0, 0x46

    return p0

    .line 338
    :cond_142
    const v0, 0x1e208

    if-lt p0, v0, :cond_14f

    const v0, 0x1fd60

    if-gt p0, v0, :cond_14f

    .line 339
    const/16 p0, 0x47

    return p0

    .line 340
    :cond_14f
    const v0, 0x48058

    if-lt p0, v0, :cond_15c

    const v0, 0x4a1f0

    if-gt p0, v0, :cond_15c

    .line 341
    const/16 p0, 0x4a

    return p0

    .line 342
    :cond_15c
    if-lt p0, v5, :cond_163

    if-gt p0, v3, :cond_163

    .line 343
    const/16 p0, 0x4b

    return p0

    .line 344
    :cond_163
    if-lt p0, v6, :cond_16a

    if-gt p0, v5, :cond_16a

    .line 345
    const/16 p0, 0x4c

    return p0

    .line 346
    :cond_16a
    const v0, 0x975e0

    if-lt p0, v0, :cond_177

    const v7, 0xa6040

    if-gt p0, v7, :cond_177

    .line 347
    const/16 p0, 0x4d

    return p0

    .line 348
    :cond_177
    if-lt p0, v0, :cond_181

    const v0, 0x9f815

    if-gt p0, v0, :cond_181

    .line 349
    const/16 p0, 0x4e

    return p0

    .line 350
    :cond_181
    const v0, 0xa9456

    if-lt p0, v0, :cond_18e

    const v0, 0xb3095

    if-gt p0, v0, :cond_18e

    .line 351
    const/16 p0, 0x4f

    return p0

    .line 352
    :cond_18e
    if-lt p0, v1, :cond_195

    if-gt p0, v2, :cond_195

    .line 353
    const/16 p0, 0x5a

    return p0

    .line 354
    :cond_195
    if-lt p0, v6, :cond_19c

    if-gt p0, v5, :cond_19c

    .line 355
    const/16 p0, 0x5b

    return p0

    .line 356
    :cond_19c
    if-lt p0, v5, :cond_1a3

    if-gt p0, v3, :cond_1a3

    .line 357
    const/16 p0, 0x5c

    return p0

    .line 358
    :cond_1a3
    if-lt p0, v6, :cond_1aa

    if-gt p0, v5, :cond_1aa

    .line 359
    const/16 p0, 0x5d

    return p0

    .line 360
    :cond_1aa
    if-lt p0, v5, :cond_1b1

    if-gt p0, v3, :cond_1b1

    .line 361
    const/16 p0, 0x5e

    return p0

    .line 362
    :cond_1b1
    if-lt p0, v4, :cond_1bb

    const v0, 0xd59f8

    if-gt p0, v0, :cond_1bb

    .line 363
    const/16 p0, 0x60

    return p0

    .line 364
    :cond_1bb
    const v0, 0x1f5816

    if-lt p0, v0, :cond_1c8

    const v0, 0x201b65

    if-gt p0, v0, :cond_1c8

    .line 365
    const/16 p0, 0x101

    return p0

    .line 366
    :cond_1c8
    const v0, 0x1ec59b

    if-lt p0, v0, :cond_1d5

    const v0, 0x1f9930

    if-gt p0, v0, :cond_1d5

    .line 367
    const/16 p0, 0x102

    return p0

    .line 368
    :cond_1d5
    const v0, 0x2203ae

    if-lt p0, v0, :cond_1e2

    const v0, 0x22c6fd

    if-gt p0, v0, :cond_1e2

    .line 369
    const/16 p0, 0x104

    return p0

    .line 370
    :cond_1e2
    const v0, 0x1f9931

    if-lt p0, v0, :cond_1ef

    const v0, 0x1fd087

    if-gt p0, v0, :cond_1ef

    .line 371
    const/16 p0, 0x105

    return p0

    .line 373
    :cond_1ef
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getOperatingBandForUarfcn(I)I
    .registers 21

    .line 417
    move/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [I

    fill-array-data v2, :array_18e

    .line 418
    const/16 v3, 0x9

    new-array v4, v3, [I

    fill-array-data v4, :array_1aa

    .line 419
    const/4 v5, 0x6

    new-array v6, v5, [I

    fill-array-data v6, :array_1c0

    .line 420
    const/16 v7, 0x40d

    const/16 v8, 0x426

    filled-new-array {v7, v8}, [I

    move-result-object v7

    .line 421
    const/16 v8, 0xe

    new-array v9, v8, [I

    fill-array-data v9, :array_1d0

    .line 424
    new-array v10, v1, [I

    fill-array-data v10, :array_1f0

    .line 426
    const/16 v11, 0xf93

    const/16 v12, 0xf98

    const/16 v13, 0xf5c

    const/16 v14, 0xf75

    const/16 v15, 0xf7a

    filled-new-array {v13, v14, v15, v11, v12}, [I

    move-result-object v11

    .line 427
    const/16 v12, 0xfe3

    const/16 v13, 0xffc

    filled-new-array {v12, v13}, [I

    move-result-object v12

    .line 428
    const/16 v13, 0x1047

    const/16 v14, 0x1060

    filled-new-array {v13, v14}, [I

    move-result-object v13

    .line 429
    const/16 v14, 0x32c

    const/16 v15, 0x345

    move/from16 v16, v1

    const/16 v1, 0x313

    filled-new-array {v1, v14, v15}, [I

    move-result-object v1

    .line 430
    const/16 v14, 0xd

    new-array v15, v14, [I

    fill-array-data v15, :array_20c

    .line 432
    move/from16 v17, v3

    const/16 v3, 0xb

    move/from16 v18, v5

    new-array v5, v3, [I

    fill-array-data v5, :array_22a

    .line 434
    move/from16 v19, v3

    const/16 v3, 0x2942

    if-lt v0, v3, :cond_72

    const/16 v3, 0x2a56

    if-gt v0, v3, :cond_72

    .line 435
    const/4 v0, 0x1

    return v0

    .line 436
    :cond_72
    const/16 v3, 0x25be

    if-lt v0, v3, :cond_7a

    const/16 v3, 0x26d2

    if-le v0, v3, :cond_80

    .line 437
    :cond_7a
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_82

    .line 438
    :cond_80
    const/4 v0, 0x2

    return v0

    .line 439
    :cond_82
    const/16 v2, 0x48a

    if-lt v0, v2, :cond_8c

    const/16 v2, 0x5e9

    if-gt v0, v2, :cond_8c

    .line 440
    const/4 v0, 0x3

    return v0

    .line 441
    :cond_8c
    const/16 v2, 0x601

    if-lt v0, v2, :cond_94

    const/16 v2, 0x6ca

    if-le v0, v2, :cond_9a

    .line 442
    :cond_94
    invoke-static {v4, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_9c

    .line 443
    :cond_9a
    const/4 v0, 0x4

    return v0

    .line 444
    :cond_9c
    const/16 v2, 0x1123

    const/4 v3, 0x5

    if-lt v0, v2, :cond_b7

    const/16 v2, 0x113d

    if-gt v0, v2, :cond_b7

    .line 446
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v1, "jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b6

    .line 448
    return v18

    .line 450
    :cond_b6
    return v3

    .line 452
    :cond_b7
    const/16 v2, 0x1105

    if-lt v0, v2, :cond_bf

    const/16 v2, 0x116a

    if-le v0, v2, :cond_c5

    .line 453
    :cond_bf
    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_c6

    .line 454
    :cond_c5
    return v3

    .line 455
    :cond_c6
    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_cd

    .line 456
    return v18

    .line 457
    :cond_cd
    const/16 v2, 0x8bd

    if-lt v0, v2, :cond_d5

    const/16 v2, 0xa03

    if-le v0, v2, :cond_db

    .line 458
    :cond_d5
    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_dd

    .line 459
    :cond_db
    const/4 v0, 0x7

    return v0

    .line 460
    :cond_dd
    const/16 v2, 0xb79

    if-lt v0, v2, :cond_e8

    const/16 v2, 0xc10

    if-gt v0, v2, :cond_e8

    .line 461
    const/16 v0, 0x8

    return v0

    .line 462
    :cond_e8
    const/16 v2, 0x2415

    if-lt v0, v2, :cond_f1

    const/16 v2, 0x24ab

    if-gt v0, v2, :cond_f1

    .line 463
    return v17

    .line 464
    :cond_f1
    const/16 v2, 0xc28

    if-lt v0, v2, :cond_f9

    const/16 v2, 0xd3c

    if-le v0, v2, :cond_ff

    .line 465
    :cond_f9
    invoke-static {v10, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_102

    .line 466
    :cond_ff
    const/16 v0, 0xa

    return v0

    .line 467
    :cond_102
    const/16 v2, 0xe80

    if-lt v0, v2, :cond_10b

    const/16 v2, 0xecb

    if-gt v0, v2, :cond_10b

    .line 468
    return v19

    .line 469
    :cond_10b
    const/16 v2, 0xf02

    if-lt v0, v2, :cond_113

    const/16 v2, 0xf3f

    if-le v0, v2, :cond_119

    .line 470
    :cond_113
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_11a

    .line 471
    :cond_119
    return v16

    .line 472
    :cond_11a
    const/16 v2, 0xfb1

    if-lt v0, v2, :cond_122

    const/16 v2, 0xfcb

    if-le v0, v2, :cond_128

    .line 473
    :cond_122
    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_129

    .line 474
    :cond_128
    return v14

    .line 475
    :cond_129
    const/16 v2, 0x1015

    if-lt v0, v2, :cond_131

    const/16 v2, 0x102f

    if-le v0, v2, :cond_137

    .line 476
    :cond_131
    invoke-static {v13, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_138

    .line 477
    :cond_137
    return v8

    .line 478
    :cond_138
    const/16 v2, 0x2c8

    if-lt v0, v2, :cond_140

    const/16 v2, 0x2fb

    if-le v0, v2, :cond_146

    .line 479
    :cond_140
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_149

    .line 480
    :cond_146
    const/16 v0, 0x13

    return v0

    .line 481
    :cond_149
    const/16 v1, 0x11a0

    if-lt v0, v1, :cond_154

    const/16 v1, 0x121e

    if-gt v0, v1, :cond_154

    .line 482
    const/16 v0, 0x14

    return v0

    .line 483
    :cond_154
    const/16 v1, 0x35e

    if-lt v0, v1, :cond_15f

    const/16 v1, 0x390

    if-gt v0, v1, :cond_15f

    .line 484
    const/16 v0, 0x15

    return v0

    .line 485
    :cond_15f
    const/16 v1, 0x1236

    if-lt v0, v1, :cond_16a

    const/16 v1, 0x13ae

    if-gt v0, v1, :cond_16a

    .line 486
    const/16 v0, 0x16

    return v0

    .line 487
    :cond_16a
    const/16 v1, 0x13f8

    if-lt v0, v1, :cond_172

    const/16 v1, 0x1525

    if-le v0, v1, :cond_178

    .line 488
    :cond_172
    invoke-static {v15, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_17b

    .line 489
    :cond_178
    const/16 v0, 0x19

    return v0

    .line 490
    :cond_17b
    const/16 v1, 0x1682

    if-lt v0, v1, :cond_183

    const/16 v1, 0x1719

    if-le v0, v1, :cond_189

    .line 491
    :cond_183
    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_18c

    .line 492
    :cond_189
    const/16 v0, 0x1a

    return v0

    .line 494
    :cond_18c
    const/4 v0, -0x1

    return v0

    :array_18e
    .array-data 4
        0x19c
        0x1b5
        0x1ce
        0x1e7
        0x200
        0x219
        0x232
        0x24b
        0x264
        0x27d
        0x296
        0x2af
    .end array-data

    :array_1aa
    .array-data 4
        0x75f
        0x778
        0x791
        0x7aa
        0x7c3
        0x7dc
        0x7f5
        0x80e
        0x827
    .end array-data

    :array_1c0
    .array-data 4
        0x3ef
        0x3f4
        0x408
        0x40d
        0x426
        0x43f
    .end array-data

    :array_1d0
    .array-data 4
        0xa1b
        0xa34
        0xa4d
        0xa66
        0xa7f
        0xa98
        0xab1
        0xaca
        0xae3
        0xafc
        0xb15
        0xb2e
        0xb47
        0xb60
    .end array-data

    :array_1f0
    .array-data 4
        0xd54
        0xd6d
        0xd86
        0xd9f
        0xdb8
        0xdd1
        0xdea
        0xe03
        0xe1c
        0xe35
        0xe4e
        0xe67
    .end array-data

    :array_20c
    .array-data 4
        0x1894
        0x18ad
        0x18c6
        0x18df
        0x18f8
        0x1911
        0x192a
        0x1943
        0x195c
        0x1975
        0x198e
        0x19a7
        0x19c0
    .end array-data

    :array_22a
    .array-data 4
        0x1731
        0x174a
        0x1763
        0x1768
        0x177c
        0x1781
        0x1795
        0x179a
        0x17ae
        0x17b3
        0x17c7
    .end array-data
.end method

.method private static blacklist isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z
    .registers 5

    .line 768
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    .line 769
    iget p2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    if-lt p0, p2, :cond_d

    iget p1, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkRange:I

    if-gt p0, p1, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 771
    :cond_f
    iget p2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    if-lt p0, p2, :cond_18

    iget p1, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkRange:I

    if-gt p0, p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0
.end method

.method private static blacklist isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z
    .registers 5

    .line 836
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_e

    .line 837
    iget p2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeFirst:I

    if-lt p0, p2, :cond_d

    iget p1, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeLast:I

    if-gt p0, p1, :cond_d

    move v0, v1

    :cond_d
    return v0

    .line 840
    :cond_e
    iget p2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-eqz p2, :cond_20

    iget p2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-eqz p2, :cond_20

    .line 841
    iget p2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-lt p0, p2, :cond_1f

    iget p1, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-gt p0, p1, :cond_1f

    move v0, v1

    :cond_1f
    return v0

    .line 845
    :cond_20
    return v1
.end method
