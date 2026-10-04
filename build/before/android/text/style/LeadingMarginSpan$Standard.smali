.class public Landroid/text/style/LeadingMarginSpan$Standard;
.super Ljava/lang/Object;
.source "LeadingMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LeadingMarginSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final greylist-max-o mFirst:I

.field private final greylist-max-o mRest:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2

    .line 120
    invoke-direct {p0, p1, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    .line 112
    iput p2, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    .line 113
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    .line 126
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 13

    .line 161
    return-void
.end method

.method public whitelist getLeadingMargin(Z)I
    .registers 2

    .line 152
    if-eqz p1, :cond_5

    iget p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    goto :goto_7

    :cond_5
    iget p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    :goto_7
    return p1
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 129
    invoke-virtual {p0}, Landroid/text/style/LeadingMarginSpan$Standard;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 134
    const/16 v0, 0xa

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LeadingMarginSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 143
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3

    .line 147
    iget p2, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget p2, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return-void
.end method
