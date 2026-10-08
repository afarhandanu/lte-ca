.class public Landroid/text/style/LineBackgroundSpan$Standard;
.super Ljava/lang/Object;
.source "LineBackgroundSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LineBackgroundSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final blacklist mColor:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .registers 12

    .line 129
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p6

    .line 130
    iget p8, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    int-to-float p3, p3

    int-to-float p5, p5

    int-to-float p4, p4

    int-to-float p7, p7

    move p0, p5

    move-object p5, p2

    move p2, p0

    move-object p0, p1

    move p1, p3

    move p3, p4

    move p4, p7

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    return-void
.end method

.method public final whitelist getColor()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/text/style/LineBackgroundSpan$Standard;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .registers 2

    .line 95
    const/16 v0, 0x1b

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineBackgroundSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 106
    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3

    .line 111
    iget p2, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
