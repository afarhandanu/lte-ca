.class public Landroid/text/format/Formatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final blacklist fractionDigits:I

.field public final blacklist roundedBytes:J

.field public final blacklist units:Landroid/icu/util/MeasureUnit;

.field public final blacklist value:F


# direct methods
.method private constructor blacklist <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .registers 6

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 192
    iput-object p2, p0, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 193
    iput p3, p0, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    .line 194
    iput-wide p4, p0, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    .line 195
    return-void
.end method

.method public static blacklist roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;
    .registers 21

    .line 202
    move-wide/from16 v0, p0

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_9

    const/16 v2, 0x400

    goto :goto_b

    :cond_9
    const/16 v2, 0x3e8

    .line 203
    :goto_b
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_15

    move v5, v7

    goto :goto_16

    :cond_15
    move v5, v6

    .line 204
    :goto_16
    if-eqz v5, :cond_19

    neg-long v0, v0

    :cond_19
    long-to-float v0, v0

    .line 205
    sget-object v1, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 206
    nop

    .line 207
    const/high16 v8, 0x44610000    # 900.0f

    cmpl-float v9, v0, v8

    const-wide/16 v10, 0x1

    if-lez v9, :cond_2b

    .line 208
    sget-object v1, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 209
    int-to-long v12, v2

    .line 210
    int-to-float v9, v2

    div-float/2addr v0, v9

    goto :goto_2c

    .line 207
    :cond_2b
    move-wide v12, v10

    .line 212
    :goto_2c
    cmpl-float v9, v0, v8

    if-lez v9, :cond_36

    .line 213
    sget-object v1, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 214
    int-to-long v14, v2

    mul-long/2addr v12, v14

    .line 215
    int-to-float v9, v2

    div-float/2addr v0, v9

    .line 217
    :cond_36
    cmpl-float v9, v0, v8

    if-lez v9, :cond_40

    .line 218
    sget-object v1, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 219
    int-to-long v14, v2

    mul-long/2addr v12, v14

    .line 220
    int-to-float v9, v2

    div-float/2addr v0, v9

    .line 222
    :cond_40
    cmpl-float v9, v0, v8

    if-lez v9, :cond_4a

    .line 223
    sget-object v1, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 224
    int-to-long v14, v2

    mul-long/2addr v12, v14

    .line 225
    int-to-float v9, v2

    div-float/2addr v0, v9

    .line 227
    :cond_4a
    cmpl-float v8, v0, v8

    if-lez v8, :cond_56

    .line 228
    sget-object v1, Landroid/icu/util/MeasureUnit;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 229
    int-to-long v8, v2

    mul-long/2addr v12, v8

    .line 230
    int-to-float v2, v2

    div-float/2addr v0, v2

    move-object v14, v1

    goto :goto_57

    .line 227
    :cond_56
    move-object v14, v1

    .line 237
    :goto_57
    cmp-long v1, v12, v10

    const/4 v2, 0x2

    if-eqz v1, :cond_8e

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_63

    goto :goto_8e

    .line 240
    :cond_63
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    const/16 v8, 0x64

    if-gez v1, :cond_6f

    .line 241
    nop

    .line 242
    move v15, v2

    move v7, v8

    goto :goto_90

    .line 243
    :cond_6f
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_83

    .line 244
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_7f

    .line 245
    nop

    .line 246
    const/16 v1, 0xa

    move v15, v7

    move v7, v1

    goto :goto_90

    .line 248
    :cond_7f
    nop

    .line 249
    move v15, v2

    move v7, v8

    goto :goto_90

    .line 252
    :cond_83
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8a

    .line 253
    nop

    .line 254
    move v15, v6

    goto :goto_90

    .line 256
    :cond_8a
    nop

    .line 257
    move v15, v2

    move v7, v8

    goto :goto_90

    .line 238
    :cond_8e
    :goto_8e
    nop

    .line 239
    move v15, v6

    .line 261
    :goto_90
    if-eqz v5, :cond_93

    .line 262
    neg-float v0, v0

    .line 268
    :cond_93
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_9a

    move-wide/from16 v16, v3

    goto :goto_a7

    .line 269
    :cond_9a
    int-to-float v1, v7

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v12

    int-to-long v3, v7

    div-long v3, v1, v3

    move-wide/from16 v16, v3

    .line 271
    :goto_a7
    new-instance v12, Landroid/text/format/Formatter$RoundedBytesResult;

    move v13, v0

    invoke-direct/range {v12 .. v17}, Landroid/text/format/Formatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v12
.end method
