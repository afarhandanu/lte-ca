.class public Landroid/window/ConfigurationChangeSetting$DensitySetting;
.super Landroid/window/ConfigurationChangeSetting;
.source "ConfigurationChangeSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ConfigurationChangeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DensitySetting"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ConfigurationChangeSetting$DensitySetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mDensity:I

.field protected final blacklist mDisplayId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Landroid/window/ConfigurationChangeSetting$DensitySetting$1;

    invoke-direct {v0}, Landroid/window/ConfigurationChangeSetting$DensitySetting$1;-><init>()V

    sput-object v0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/window/ConfigurationChangeSetting;-><init>(ILandroid/window/ConfigurationChangeSetting-IA;)V

    .line 174
    iput p1, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    .line 175
    iput p2, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    .line 176
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/window/ConfigurationChangeSetting$DensitySetting;-><init>(II)V

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 203
    instance-of v0, p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;

    .line 206
    iget v0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    iget v2, p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    if-ne v0, v2, :cond_14

    iget v0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    iget p1, p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 204
    :cond_15
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 211
    iget v0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 184
    invoke-super {p0, p1, p2}, Landroid/window/ConfigurationChangeSetting;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    iget p2, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget p2, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void
.end method
