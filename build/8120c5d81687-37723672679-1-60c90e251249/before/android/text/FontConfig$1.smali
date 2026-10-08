.class Landroid/text/FontConfig$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig;
    .registers 10

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    sget-object v0, Landroid/text/FontConfig$FontFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    sget-object v0, Landroid/text/FontConfig$Alias;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    sget-object v0, Landroid/text/FontConfig$NamedFamilyList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 190
    new-instance v0, Landroid/text/FontConfig;

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 190
    return-object v0
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

    .line 179
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig;
    .registers 2

    .line 197
    new-array p1, p1, [Landroid/text/FontConfig;

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

    .line 179
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$1;->newArray(I)[Landroid/text/FontConfig;

    move-result-object p1

    return-object p1
.end method
