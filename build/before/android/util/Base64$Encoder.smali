.class Landroid/util/Base64$Encoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ENCODE:[B

.field private static final greylist-max-o ENCODE_WEBSAFE:[B

.field public static final greylist-max-o LINE_GROUPS:I = 0x13


# instance fields
.field private final greylist-max-o alphabet:[B

.field private greylist-max-o count:I

.field public final greylist-max-o do_cr:Z

.field public final greylist-max-o do_newline:Z

.field public final greylist-max-o do_padding:Z

.field private final greylist-max-o tail:[B

.field greylist-max-o tailLen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 545
    const-class v0, Landroid/util/Base64;

    .line 557
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    .line 568
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    nop

    :array_16
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_3a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor greylist-max-o <init>(I[B)V
    .registers 5

    .line 584
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    .line 585
    iput-object p2, p0, Landroid/util/Base64$Encoder;->output:[B

    .line 587
    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_d

    move p2, v1

    goto :goto_e

    :cond_d
    move p2, v0

    :goto_e
    iput-boolean p2, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    .line 588
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_16

    move p2, v1

    goto :goto_17

    :cond_16
    move p2, v0

    :goto_17
    iput-boolean p2, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    .line 589
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    iput-boolean v1, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    .line 590
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_28

    sget-object p1, Landroid/util/Base64$Encoder;->ENCODE:[B

    goto :goto_2a

    :cond_28
    sget-object p1, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    :goto_2a
    iput-object p1, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 592
    const/4 p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/util/Base64$Encoder;->tail:[B

    .line 593
    iput v0, p0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 595
    iget-boolean p1, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz p1, :cond_3a

    const/16 p1, 0x13

    goto :goto_3b

    :cond_3a
    const/4 p1, -0x1

    :goto_3b
    iput p1, p0, Landroid/util/Base64$Encoder;->count:I

    .line 596
    return-void
.end method


# virtual methods
.method public greylist-max-o maxOutputSize(I)I
    .registers 2

    .line 603
    mul-int/lit8 p1, p1, 0x8

    div-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public greylist-max-o process([BIIZ)Z
    .registers 22

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 609
    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    .line 610
    nop

    .line 611
    iget v3, v0, Landroid/util/Base64$Encoder;->count:I

    .line 613
    nop

    .line 614
    add-int v4, p3, p2

    .line 615
    nop

    .line 621
    iget v5, v0, Landroid/util/Base64$Encoder;->tailLen:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    packed-switch v5, :pswitch_data_204

    goto :goto_54

    .line 638
    :pswitch_16
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_54

    .line 640
    iget-object v9, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v9, v9, v7

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    iget-object v10, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 643
    iput v7, v0, Landroid/util/Base64$Encoder;->tailLen:I

    goto :goto_57

    .line 627
    :pswitch_33
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_54

    .line 630
    iget-object v5, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v9, p2, 0x1

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v5, v10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v5

    .line 633
    iput v7, v0, Landroid/util/Base64$Encoder;->tailLen:I

    move v5, v10

    goto :goto_57

    .line 624
    :pswitch_53
    nop

    .line 648
    :cond_54
    :goto_54
    move/from16 v5, p2

    move v9, v8

    :goto_57
    const/16 v10, 0x13

    const/4 v11, 0x4

    const/16 v12, 0xd

    const/16 v13, 0xa

    const/4 v14, 0x2

    if-eq v9, v8, :cond_95

    .line 649
    shr-int/lit8 v8, v9, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v7

    .line 650
    shr-int/lit8 v8, v9, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v6

    .line 651
    shr-int/lit8 v8, v9, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v14

    .line 652
    and-int/lit8 v8, v9, 0x3f

    aget-byte v8, v1, v8

    const/4 v9, 0x3

    aput-byte v8, v2, v9

    .line 653
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_93

    .line 654
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_8c

    aput-byte v12, v2, v11

    const/4 v3, 0x5

    goto :goto_8d

    :cond_8c
    move v3, v11

    .line 655
    :goto_8d
    add-int/lit8 v8, v3, 0x1

    aput-byte v13, v2, v3

    .line 656
    move v3, v10

    goto :goto_96

    .line 653
    :cond_93
    move v8, v11

    goto :goto_96

    .line 648
    :cond_95
    move v8, v7

    .line 665
    :goto_96
    add-int/lit8 v9, v5, 0x3

    if-gt v9, v4, :cond_f4

    .line 666
    aget-byte v15, p1, v5

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v5, 0x1

    move/from16 p3, v7

    aget-byte v7, p1, v16

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v15

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v7

    .line 669
    shr-int/lit8 v7, v5, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v1, v7

    aput-byte v7, v2, v8

    .line 670
    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v7

    .line 671
    add-int/lit8 v7, v8, 0x2

    shr-int/lit8 v15, v5, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v7

    .line 672
    add-int/lit8 v7, v8, 0x3

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v1, v5

    aput-byte v5, v2, v7

    .line 673
    nop

    .line 674
    add-int/lit8 v8, v8, 0x4

    .line 675
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_f0

    .line 676
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_e6

    add-int/lit8 v3, v8, 0x1

    aput-byte v12, v2, v8

    move v8, v3

    .line 677
    :cond_e6
    add-int/lit8 v3, v8, 0x1

    aput-byte v13, v2, v8

    .line 678
    move/from16 v7, p3

    move v8, v3

    move v5, v9

    move v3, v10

    goto :goto_96

    .line 675
    :cond_f0
    move/from16 v7, p3

    move v5, v9

    goto :goto_96

    .line 682
    :cond_f4
    move/from16 p3, v7

    if-eqz p4, :cond_1d2

    .line 688
    iget v7, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v7, v5, v7

    add-int/lit8 v9, v4, -0x1

    const/16 v15, 0x3d

    if-ne v7, v9, :cond_14c

    .line 689
    nop

    .line 690
    iget v4, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v4, :cond_10d

    iget-object v4, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v4, v4, p3

    move v7, v6

    goto :goto_111

    :cond_10d
    aget-byte v4, p1, v5

    move/from16 v7, p3

    :goto_111
    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v11

    .line 691
    iget v5, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 692
    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v1, v7

    aput-byte v7, v2, v8

    .line 693
    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v1, v1, v4

    aput-byte v1, v2, v5

    .line 694
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_137

    .line 695
    add-int/lit8 v1, v7, 0x1

    aput-byte v15, v2, v7

    .line 696
    add-int/lit8 v7, v1, 0x1

    aput-byte v15, v2, v1

    .line 698
    :cond_137
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_149

    .line 699
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_144

    add-int/lit8 v1, v7, 0x1

    aput-byte v12, v2, v7

    move v7, v1

    .line 700
    :cond_144
    add-int/lit8 v1, v7, 0x1

    aput-byte v13, v2, v7

    move v7, v1

    .line 702
    :cond_149
    move v8, v7

    goto/16 :goto_1d0

    :cond_14c
    iget v7, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v7, v5, v7

    sub-int/2addr v4, v14

    if-ne v7, v4, :cond_1ba

    .line 703
    nop

    .line 704
    iget v4, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-le v4, v6, :cond_15e

    iget-object v4, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v4, v4, p3

    move v7, v6

    goto :goto_167

    :cond_15e
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    move v7, v5

    move v5, v4

    move v4, v7

    move/from16 v7, p3

    :goto_167
    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v13

    .line 705
    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v9, :cond_176

    iget-object v5, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v5, v5, v7

    move v7, v9

    goto :goto_178

    :cond_176
    aget-byte v5, p1, v5

    :goto_178
    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v14

    or-int/2addr v4, v5

    .line 706
    iget v5, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 707
    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v1, v7

    aput-byte v7, v2, v8

    .line 708
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v5

    .line 709
    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v1, v1, v4

    aput-byte v1, v2, v7

    .line 710
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_1a6

    .line 711
    add-int/lit8 v1, v5, 0x1

    aput-byte v15, v2, v5

    move v5, v1

    .line 713
    :cond_1a6
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_1b8

    .line 714
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_1b3

    add-int/lit8 v1, v5, 0x1

    aput-byte v12, v2, v5

    move v5, v1

    .line 715
    :cond_1b3
    add-int/lit8 v1, v5, 0x1

    aput-byte v13, v2, v5

    move v5, v1

    .line 717
    :cond_1b8
    move v8, v5

    goto :goto_1d0

    :cond_1ba
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_1d0

    if-lez v8, :cond_1d0

    if-eq v3, v10, :cond_1d0

    .line 718
    iget-boolean v1, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_1cb

    add-int/lit8 v1, v8, 0x1

    aput-byte v12, v2, v8

    move v8, v1

    .line 719
    :cond_1cb
    add-int/lit8 v1, v8, 0x1

    aput-byte v13, v2, v8

    move v8, v1

    .line 722
    :cond_1d0
    :goto_1d0
    nop

    .line 723
    goto :goto_1ff

    .line 728
    :cond_1d2
    add-int/lit8 v1, v4, -0x1

    if-ne v5, v1, :cond_1e3

    .line 729
    iget-object v1, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v2, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v4, p1, v5

    aput-byte v4, v1, v2

    goto :goto_1ff

    .line 730
    :cond_1e3
    sub-int/2addr v4, v14

    if-ne v5, v4, :cond_1ff

    .line 731
    iget-object v1, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v2, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v4, p1, v5

    aput-byte v4, v1, v2

    .line 732
    iget-object v1, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v2, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/2addr v5, v6

    aget-byte v4, p1, v5

    aput-byte v4, v1, v2

    .line 736
    :cond_1ff
    :goto_1ff
    iput v8, v0, Landroid/util/Base64$Encoder;->op:I

    .line 737
    iput v3, v0, Landroid/util/Base64$Encoder;->count:I

    .line 739
    return v6

    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_53
        :pswitch_33
        :pswitch_16
    .end packed-switch
.end method
