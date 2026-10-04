.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mFontWeightAdjustment:I

.field private final greylist-max-o mStyle:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3

    .line 61
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/text/style/StyleSpan;-><init>(II)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 76
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 77
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 78
    iput p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 86
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 89
    return-void
.end method

.method private static blacklist apply(Landroid/graphics/Paint;II)V
    .registers 7

    .line 149
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 150
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 151
    move v2, v1

    goto :goto_d

    .line 153
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .line 156
    :goto_d
    or-int/2addr v2, p1

    .line 159
    if-nez v0, :cond_15

    .line 160
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_19

    .line 162
    :cond_15
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 166
    :goto_19
    const/4 v3, 0x1

    and-int/2addr p1, v3

    if-eqz p1, :cond_3d

    .line 167
    if-eqz p2, :cond_3d

    const p1, 0x7fffffff

    if-eq p2, p1, :cond_3d

    .line 169
    nop

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getWeight()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 169
    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 172
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_39

    move v1, v3

    .line 173
    :cond_39
    invoke-static {v0, p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 177
    :cond_3d
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v2

    .line 179
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_4a

    .line 180
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 183
    :cond_4a
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_53

    .line 184
    const/high16 p1, -0x41800000    # -0.25f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 187
    :cond_53
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 188
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFontWeightAdjustment()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 93
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 99
    const/4 v0, 0x7

    return v0
.end method

.method public whitelist getStyle()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StyleSpan{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getFontWeightAdjustment()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    .line 138
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 139
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4

    .line 143
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 144
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 109
    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 110
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3

    .line 115
    iget p2, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void
.end method
