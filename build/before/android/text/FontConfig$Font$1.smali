.class Landroid/text/FontConfig$Font$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig$Font;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$Font;
    .registers 12

    .line 302
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 304
    if-nez v0, :cond_12

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_17

    :cond_12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v7

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 313
    move p1, v0

    new-instance v0, Landroid/text/FontConfig$Font;

    move v9, v4

    new-instance v4, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v4, p1, v9}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-direct/range {v0 .. v8}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

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

    .line 298
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$Font$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$Font;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig$Font;
    .registers 2

    .line 319
    new-array p1, p1, [Landroid/text/FontConfig$Font;

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

    .line 298
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$Font$1;->newArray(I)[Landroid/text/FontConfig$Font;

    move-result-object p1

    return-object p1
.end method
