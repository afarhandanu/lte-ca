.class public final Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selection"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$Selection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

.field private final blacklist mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6077
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 6017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6018
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6019
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6020
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V
    .registers 3

    .line 6012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6013
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6014
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6015
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6070
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 6038
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 6039
    return v0

    .line 6042
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 6043
    return v1

    .line 6046
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 6047
    return v0

    .line 6050
    :cond_13
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    .line 6051
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    move v0, v1

    :cond_32
    return v0
.end method

.method public whitelist getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .registers 2

    .line 6033
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-object v0
.end method

.method public whitelist getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .registers 2

    .line 6026
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 6057
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 6063
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6064
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6065
    return-void
.end method
