.class public final Landroid/window/TrustedPresentationThresholds;
.super Ljava/lang/Object;
.source "TrustedPresentationThresholds.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TrustedPresentationThresholds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMinAlpha:F

.field private final blacklist mMinFractionRendered:F

.field private final blacklist mStabilityRequirementMs:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 157
    new-instance v0, Landroid/window/TrustedPresentationThresholds$1;

    invoke-direct {v0}, Landroid/window/TrustedPresentationThresholds$1;-><init>()V

    sput-object v0, Landroid/window/TrustedPresentationThresholds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(FFI)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    .line 101
    iput p2, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    .line 102
    iput p3, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    .line 103
    invoke-direct {p0}, Landroid/window/TrustedPresentationThresholds;->checkValid()V

    .line 104
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    .line 154
    invoke-direct {p0}, Landroid/window/TrustedPresentationThresholds;->checkValid()V

    .line 155
    return-void
.end method

.method private blacklist checkValid()V
    .registers 3

    .line 78
    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_13

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_13

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_13

    .line 82
    return-void

    .line 79
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TrustedPresentationThresholds values are invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 136
    return v0

    .line 138
    :cond_4
    instance-of v1, p1, Landroid/window/TrustedPresentationThresholds;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    check-cast p1, Landroid/window/TrustedPresentationThresholds;

    .line 141
    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    iget v3, p1, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_22

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    iget v3, p1, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_22

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    iget p1, p1, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    if-ne v1, p1, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0

    .line 139
    :cond_24
    return v2
.end method

.method public whitelist getMinAlpha()F
    .registers 2

    .line 59
    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    return v0
.end method

.method public whitelist getMinFractionRendered()F
    .registers 2

    .line 67
    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    return v0
.end method

.method public whitelist getStabilityRequirementMillis()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 130
    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustedPresentationThresholds { minAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minFractionRendered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stabilityRequirementMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 117
    iget p2, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 118
    iget p2, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 119
    iget p2, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
