.class public Landroid/view/FrameRateCategoryRate;
.super Ljava/lang/Object;
.source "FrameRateCategoryRate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/FrameRateCategoryRate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHigh:F

.field private final blacklist mNormal:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/view/FrameRateCategoryRate$1;

    invoke-direct {v0}, Landroid/view/FrameRateCategoryRate$1;-><init>()V

    sput-object v0, Landroid/view/FrameRateCategoryRate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    .line 42
    iput p2, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 63
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 64
    return v0

    .line 66
    :cond_4
    instance-of v1, p1, Landroid/view/FrameRateCategoryRate;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 67
    return v2

    .line 69
    :cond_a
    check-cast p1, Landroid/view/FrameRateCategoryRate;

    .line 70
    iget v1, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    iget v3, p1, Landroid/view/FrameRateCategoryRate;->mNormal:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1d

    iget v1, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    iget p1, p1, Landroid/view/FrameRateCategoryRate;->mHigh:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public blacklist getHigh()F
    .registers 2

    .line 58
    iget v0, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    return v0
.end method

.method public blacklist getNormal()F
    .registers 2

    .line 50
    iget v0, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 76
    nop

    .line 77
    iget v0, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 78
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameRateCategoryRate {normal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", high="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 92
    iget p2, p0, Landroid/view/FrameRateCategoryRate;->mNormal:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 93
    iget p2, p0, Landroid/view/FrameRateCategoryRate;->mHigh:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 94
    return-void
.end method
