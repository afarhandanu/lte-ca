.class public Landroid/text/style/AccessibilityReplacementSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AccessibilityReplacementSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/AccessibilityReplacementSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Landroid/text/style/AccessibilityReplacementSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityReplacementSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/AccessibilityReplacementSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityReplacementSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityReplacementSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    .line 91
    return-void
.end method

.method public whitelist getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    .line 85
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 59
    invoke-virtual {p0}, Landroid/text/style/AccessibilityReplacementSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .registers 2

    .line 64
    const/16 v0, 0x1d

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityReplacementSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 75
    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3

    .line 79
    invoke-virtual {p0}, Landroid/text/style/AccessibilityReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method
