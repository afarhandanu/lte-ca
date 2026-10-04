.class public Landroid/text/style/LineHeightSpan$Standard;
.super Ljava/lang/Object;
.source "LineHeightSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LineHeightSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final blacklist mHeight:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Height: %d must be positive"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iput p1, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 7

    .line 143
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    .line 145
    if-gtz p1, :cond_8

    .line 146
    return-void

    .line 148
    :cond_8
    iget p2, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 149
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 150
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    sub-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 151
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 114
    invoke-virtual {p0}, Landroid/text/style/LineHeightSpan$Standard;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .registers 2

    .line 120
    const/16 v0, 0x1c

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 130
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineHeightSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 131
    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3

    .line 136
    iget p2, p0, Landroid/text/style/LineHeightSpan$Standard;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
