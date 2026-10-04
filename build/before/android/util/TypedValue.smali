.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/TypedValue$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field public static final whitelist COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final whitelist COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final whitelist COMPLEX_RADIX_0p23:I = 0x3

.field public static final whitelist COMPLEX_RADIX_16p7:I = 0x1

.field public static final whitelist COMPLEX_RADIX_23p0:I = 0x0

.field public static final whitelist COMPLEX_RADIX_8p15:I = 0x2

.field public static final whitelist COMPLEX_RADIX_MASK:I = 0x3

.field public static final whitelist COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final whitelist COMPLEX_UNIT_DIP:I = 0x1

.field public static final whitelist COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final whitelist COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final whitelist COMPLEX_UNIT_IN:I = 0x4

.field public static final whitelist COMPLEX_UNIT_MASK:I = 0xf

.field public static final whitelist COMPLEX_UNIT_MM:I = 0x5

.field public static final whitelist COMPLEX_UNIT_PT:I = 0x3

.field public static final whitelist COMPLEX_UNIT_PX:I = 0x0

.field public static final whitelist COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final whitelist COMPLEX_UNIT_SP:I = 0x2

.field public static final whitelist DATA_NULL_EMPTY:I = 0x1

.field public static final whitelist DATA_NULL_UNDEFINED:I = 0x0

.field public static final whitelist DENSITY_DEFAULT:I = 0x0

.field public static final whitelist DENSITY_NONE:I = 0xffff

.field private static final greylist-max-o DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final greylist-max-o FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final blacklist INCHES_PER_MM:F = 0.03937008f

.field private static final blacklist INCHES_PER_PT:F = 0.013888889f

.field private static final greylist-max-o MANTISSA_MULT:F = 0.00390625f

.field private static final greylist-max-o RADIX_MULTS:[F

.field public static final whitelist TYPE_ATTRIBUTE:I = 0x2

.field public static final whitelist TYPE_DIMENSION:I = 0x5

.field public static final whitelist TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final whitelist TYPE_FIRST_INT:I = 0x10

.field public static final whitelist TYPE_FLOAT:I = 0x4

.field public static final whitelist TYPE_FRACTION:I = 0x6

.field public static final whitelist TYPE_INT_BOOLEAN:I = 0x12

.field public static final whitelist TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final whitelist TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final whitelist TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final whitelist TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final whitelist TYPE_INT_DEC:I = 0x10

.field public static final whitelist TYPE_INT_HEX:I = 0x11

.field public static final whitelist TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final whitelist TYPE_LAST_INT:I = 0x1f

.field public static final whitelist TYPE_NULL:I = 0x0

.field public static final whitelist TYPE_REFERENCE:I = 0x1

.field public static final whitelist TYPE_STRING:I = 0x3


# instance fields
.field public whitelist assetCookie:I

.field public whitelist changingConfigurations:I

.field public whitelist data:I

.field public whitelist density:I

.field public whitelist resourceId:I

.field public whitelist sourceResourceId:I

.field public whitelist string:Ljava/lang/CharSequence;

.field public whitelist type:I

.field public blacklist usesFeatureFlags:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    .line 761
    const-string v5, "in"

    const-string/jumbo v6, "mm"

    const-string/jumbo v1, "px"

    const-string v2, "dip"

    const-string/jumbo v3, "sp"

    const-string/jumbo v4, "pt"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    .line 764
    const-string v0, "%"

    const-string v1, "%p"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    return-void

    nop

    :array_2a
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/TypedValue;->usesFeatureFlags:Z

    return-void
.end method

.method public static whitelist applyDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 3

    .line 433
    packed-switch p0, :pswitch_data_32

    .line 454
    const/4 p0, 0x0

    return p0

    .line 452
    :pswitch_5
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p1, p0

    const p0, 0x3d214285

    mul-float/2addr p1, p0

    return p1

    .line 450
    :pswitch_d
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p1, p0

    return p1

    .line 448
    :pswitch_11
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p1, p0

    const p0, 0x3c638e39

    mul-float/2addr p1, p0

    return p1

    .line 439
    :pswitch_19
    iget-object p0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz p0, :cond_29

    .line 440
    iget-object p0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    .line 442
    invoke-interface {p0, p1}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result p0

    .line 440
    const/4 p1, 0x1

    invoke-static {p1, p0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    .line 445
    :cond_29
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    return p1

    .line 437
    :pswitch_2d
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1

    .line 435
    :pswitch_31
    return p1

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2d
        :pswitch_19
        :pswitch_11
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method public static final whitelist coerceToString(II)Ljava/lang/String;
    .registers 5

    .line 780
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_ca

    .line 801
    const/16 v1, 0x1c

    const/16 v2, 0x1f

    if-lt p0, v1, :cond_be

    if-gt p0, v2, :cond_be

    .line 802
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 798
    :sswitch_24
    if-eqz p1, :cond_2a

    const-string/jumbo p0, "true"

    goto :goto_2c

    :cond_2a
    const-string p0, "false"

    :goto_2c
    return-object p0

    .line 796
    :sswitch_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 793
    :sswitch_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0xf

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 790
    :sswitch_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0xf

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 788
    :sswitch_8c
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 786
    :sswitch_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 784
    :sswitch_a9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 782
    :sswitch_bd
    return-object v0

    .line 803
    :cond_be
    const/16 v1, 0x10

    if-lt p0, v1, :cond_c9

    if-gt p0, v2, :cond_c9

    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 807
    :cond_c9
    return-object v0

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_bd
        0x1 -> :sswitch_a9
        0x2 -> :sswitch_95
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_45
        0x11 -> :sswitch_2d
        0x12 -> :sswitch_24
    .end sparse-switch
.end method

.method public static whitelist complexToDimension(ILandroid/util/DisplayMetrics;)F
    .registers 3

    .line 316
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    .line 318
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    .line 316
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static greylist-max-o complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static whitelist complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .registers 3

    .line 341
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    .line 343
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    .line 341
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static whitelist complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .registers 6

    .line 368
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    .line 369
    const/4 v1, 0x0

    shr-int/2addr p0, v1

    and-int/lit8 p0, p0, 0xf

    invoke-static {p0, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 373
    const/4 p1, 0x0

    cmpl-float v2, p0, p1

    const/high16 v3, 0x3f000000    # 0.5f

    if-ltz v2, :cond_15

    add-float/2addr p0, v3

    goto :goto_16

    :cond_15
    sub-float/2addr p0, v3

    :goto_16
    float-to-int p0, p0

    .line 374
    if-eqz p0, :cond_1a

    return p0

    .line 375
    :cond_1a
    cmpl-float p0, v0, p1

    if-nez p0, :cond_1f

    return v1

    .line 376
    :cond_1f
    if-lez p0, :cond_23

    const/4 p0, 0x1

    return p0

    .line 377
    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist complexToFloat(I)F
    .registers 3

    .line 295
    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3

    aget p0, v1, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static whitelist complexToFraction(IFF)F
    .registers 4

    .line 717
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_16

    .line 723
    const/4 p0, 0x0

    return p0

    .line 721
    :pswitch_9
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    return p0

    .line 719
    :pswitch_f
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    mul-float/2addr p0, p1

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public static whitelist convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F
    .registers 3

    .line 557
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static whitelist convertPixelsToDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 3

    .line 536
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static blacklist createComplex(II)I
    .registers 4

    .line 587
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_30

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_30

    .line 590
    if-ltz p1, :cond_17

    const/4 v0, 0x3

    if-gt p1, v0, :cond_17

    .line 593
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x8

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    .line 591
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid radix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 588
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Magnitude of mantissa is too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist createComplexDimension(FI)I
    .registers 4

    .line 693
    if-ltz p1, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    .line 696
    invoke-static {p0}, Landroid/util/TypedValue;->floatToComplex(F)I

    move-result p0

    or-int/2addr p0, p1

    return p0

    .line 694
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist createComplexDimension(II)I
    .registers 4

    .line 672
    if-ltz p1, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    .line 675
    invoke-static {p0}, Landroid/util/TypedValue;->intToComplex(I)I

    move-result p0

    or-int/2addr p0, p1

    return p0

    .line 673
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 4

    .line 475
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_6e

    .line 514
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unitToConvertTo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 508
    :pswitch_1d
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p0, p0, v0

    if-nez p0, :cond_24

    .line 509
    return v0

    .line 511
    :cond_24
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p1, p0

    const p0, 0x3d214285

    div-float/2addr p1, p0

    return p1

    .line 502
    :pswitch_2c
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p0, p0, v0

    if-nez p0, :cond_33

    .line 503
    return v0

    .line 505
    :cond_33
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p1, p0

    return p1

    .line 496
    :pswitch_37
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p0, p0, v0

    if-nez p0, :cond_3e

    .line 497
    return v0

    .line 499
    :cond_3e
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p1, p0

    const p0, 0x3c638e39

    div-float/2addr p1, p0

    return p1

    .line 486
    :pswitch_46
    iget-object p0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz p0, :cond_56

    .line 487
    const/4 p0, 0x1

    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 488
    iget-object p1, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    invoke-interface {p1, p0}, Landroid/content/res/FontScaleConverter;->convertDpToSp(F)F

    move-result p0

    return p0

    .line 490
    :cond_56
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float p0, p0, v0

    if-nez p0, :cond_5d

    .line 491
    return v0

    .line 493
    :cond_5d
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p0

    return p1

    .line 480
    :pswitch_61
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float p0, p0, v0

    if-nez p0, :cond_68

    .line 481
    return v0

    .line 483
    :cond_68
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    return p1

    .line 477
    :pswitch_6c
    return p1

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_61
        :pswitch_46
        :pswitch_37
        :pswitch_2c
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist floatToComplex(F)I
    .registers 5

    .line 628
    const/high16 v0, -0x35000000    # -8388608.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_79

    const v0, 0x4affffff    # 8388607.5f

    cmpl-float v0, p0, v0

    if-gez v0, :cond_79

    .line 633
    float-to-int v0, p0

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 634
    :try_start_14
    invoke-static {v0, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result p0

    return p0

    .line 636
    :cond_19
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 638
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_30

    .line 639
    const/high16 v0, 0x4b000000    # 8388608.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result p0

    return p0

    .line 642
    :cond_30
    const/high16 v1, 0x43800000    # 256.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_43

    .line 643
    const/high16 v0, 0x47000000    # 32768.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result p0

    return p0

    .line 646
    :cond_43
    const/high16 v1, 0x47800000    # 65536.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_56

    .line 647
    const/high16 v0, 0x43000000    # 128.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result p0

    return p0

    .line 650
    :cond_56
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result p0
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_5e} :catch_5f

    return p0

    .line 651
    :catch_5f
    move-exception v0

    .line 653
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert value to complex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 629
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getUnitFromComplexDimension(I)I
    .registers 1

    .line 411
    shr-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static blacklist intToComplex(I)I
    .registers 4

    .line 609
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_e

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_e

    .line 612
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/TypedValue;->createComplex(II)I

    move-result p0

    return p0

    .line 610
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist coerceToString()Ljava/lang/CharSequence;
    .registers 3

    .line 754
    iget v0, p0, Landroid/util/TypedValue;->type:I

    .line 755
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 756
    iget-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    return-object v0

    .line 758
    :cond_8
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getComplexUnit()I
    .registers 2

    .line 398
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/util/TypedValue;->getUnitFromComplexDimension(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDimension(Landroid/util/DisplayMetrics;)F
    .registers 3

    .line 572
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public final whitelist getFloat()F
    .registers 2

    .line 261
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist getFraction(FF)F
    .registers 4

    .line 741
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p1

    return p1
.end method

.method public whitelist isColorType()Z
    .registers 3

    .line 280
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method blacklist setFields(IIIIIIZ)V
    .registers 8

    .line 850
    iput p1, p0, Landroid/util/TypedValue;->type:I

    .line 851
    iput p2, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 852
    iput p3, p0, Landroid/util/TypedValue;->data:I

    .line 853
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 854
    iput p4, p0, Landroid/util/TypedValue;->resourceId:I

    .line 855
    iput p5, p0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 856
    iput p6, p0, Landroid/util/TypedValue;->density:I

    .line 857
    iput-boolean p7, p0, Landroid/util/TypedValue;->usesFeatureFlags:Z

    .line 858
    return-void
.end method

.method public whitelist setTo(Landroid/util/TypedValue;)V
    .registers 3

    .line 812
    iget v0, p1, Landroid/util/TypedValue;->type:I

    iput v0, p0, Landroid/util/TypedValue;->type:I

    .line 813
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 814
    iget v0, p1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroid/util/TypedValue;->data:I

    .line 815
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 816
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 817
    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/util/TypedValue;->density:I

    .line 818
    iget-boolean p1, p1, Landroid/util/TypedValue;->usesFeatureFlags:Z

    iput-boolean p1, p0, Landroid/util/TypedValue;->usesFeatureFlags:Z

    .line 819
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    const-string v1, "TypedValue{t=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string v1, "/d=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    .line 827
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_37

    :cond_35
    const-string v2, "<null>"

    :goto_37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_40
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    if-eqz v1, :cond_4f

    .line 830
    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    :cond_4f
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_62

    .line 833
    const-string v1, " r=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_62
    iget-boolean v1, p0, Landroid/util/TypedValue;->usesFeatureFlags:Z

    if-eqz v1, :cond_6b

    .line 836
    const-string v1, " flagged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_6b
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
