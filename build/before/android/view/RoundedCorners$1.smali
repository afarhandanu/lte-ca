.class Landroid/view/RoundedCorners$1;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RoundedCorners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/RoundedCorners;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/RoundedCorners;
    .registers 4

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 600
    if-nez v0, :cond_9

    .line 601
    sget-object p1, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object p1

    .line 603
    :cond_9
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/RoundedCorner;

    .line 604
    sget-object v1, Landroid/view/RoundedCorner;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 605
    new-instance p1, Landroid/view/RoundedCorners;

    invoke-direct {p1, v0}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 596
    invoke-virtual {p0, p1}, Landroid/view/RoundedCorners$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/RoundedCorners;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/RoundedCorners;
    .registers 2

    .line 610
    new-array p1, p1, [Landroid/view/RoundedCorners;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 596
    invoke-virtual {p0, p1}, Landroid/view/RoundedCorners$1;->newArray(I)[Landroid/view/RoundedCorners;

    move-result-object p1

    return-object p1
.end method
