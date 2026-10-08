.class Landroid/text/FontConfig$FontFamily$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig$FontFamily;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$FontFamily;
    .registers 5

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    sget-object v1, Landroid/text/FontConfig$Font;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 698
    new-instance v2, Landroid/text/FontConfig$FontFamily;

    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {v2, v0, v1, p1}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    return-object v2
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

    .line 689
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$FontFamily$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$FontFamily;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig$FontFamily;
    .registers 2

    .line 703
    new-array p1, p1, [Landroid/text/FontConfig$FontFamily;

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

    .line 689
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$FontFamily$1;->newArray(I)[Landroid/text/FontConfig$FontFamily;

    move-result-object p1

    return-object p1
.end method
