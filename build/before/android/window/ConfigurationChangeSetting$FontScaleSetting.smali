.class public Landroid/window/ConfigurationChangeSetting$FontScaleSetting;
.super Landroid/window/ConfigurationChangeSetting;
.source "ConfigurationChangeSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ConfigurationChangeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontScaleSetting"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ConfigurationChangeSetting$FontScaleSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mFontScaleFactor:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 244
    new-instance v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting$1;

    invoke-direct {v0}, Landroid/window/ConfigurationChangeSetting$FontScaleSetting$1;-><init>()V

    sput-object v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 4

    .line 230
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/window/ConfigurationChangeSetting;-><init>(ILandroid/window/ConfigurationChangeSetting-IA;)V

    .line 231
    iput p1, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    .line 232
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;-><init>(F)V

    .line 236
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 258
    instance-of v0, p1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    check-cast p1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;

    .line 261
    iget v0, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    iget p1, p1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 259
    :cond_13
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 240
    invoke-super {p0, p1, p2}, Landroid/window/ConfigurationChangeSetting;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    iget p2, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 242
    return-void
.end method
