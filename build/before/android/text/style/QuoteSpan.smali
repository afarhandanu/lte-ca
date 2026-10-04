.class public Landroid/text/style/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist STANDARD_COLOR:I = -0xffff01

.field public static final whitelist STANDARD_GAP_WIDTH_PX:I = 0x2

.field public static final whitelist STANDARD_STRIPE_WIDTH_PX:I = 0x2


# instance fields
.field private final greylist-max-o mColor:I

.field private final greylist-max-o mGapWidth:I

.field private final greylist-max-o mStripeWidth:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 89
    const v0, -0xffff01

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v1}, Landroid/text/style/QuoteSpan;-><init>(III)V

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3

    .line 98
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0}, Landroid/text/style/QuoteSpan;-><init>(III)V

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 112
    iput p2, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    .line 113
    iput p3, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    .line 114
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    .line 123
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 13

    .line 196
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    .line 197
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    .line 199
    sget-object p9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget p9, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    move-object p9, p1

    int-to-float p1, p3

    int-to-float p5, p5

    iget p10, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    mul-int/2addr p4, p10

    add-int/2addr p3, p4

    int-to-float p3, p3

    int-to-float p4, p7

    move p0, p5

    move-object p5, p2

    move p2, p0

    move-object p0, p9

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    invoke-virtual {p5, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    return-void
.end method

.method public whitelist getColor()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    return v0
.end method

.method public whitelist getGapWidth()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return v0
.end method

.method public whitelist getLeadingMargin(Z)I
    .registers 3

    .line 188
    iget p1, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    add-int/2addr p1, v0

    return p1
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 127
    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 135
    const/16 v0, 0x9

    return v0
.end method

.method public whitelist getStripeWidth()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuoteSpan{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stripeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getStripeWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gapWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getGapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/text/style/QuoteSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 146
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3

    .line 153
    iget p2, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
