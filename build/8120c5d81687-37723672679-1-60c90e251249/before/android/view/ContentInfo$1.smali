.class Landroid/view/ContentInfo$1;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/ContentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/ContentInfo;
    .registers 10

    .line 469
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 474
    nop

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2d

    .line 476
    sget-object v5, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputContentInfo;

    goto :goto_2e

    .line 475
    :cond_2d
    move-object v5, v6

    .line 478
    :goto_2e
    nop

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    .line 480
    sget-object v6, Landroid/view/DragAndDropPermissions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/view/DragAndDropPermissions;

    .line 482
    :cond_3e
    new-instance p1, Landroid/view/ContentInfo$Builder;

    invoke-direct {p1, v0, v1}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 483
    invoke-virtual {p1, v2}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    .line 484
    invoke-virtual {p1, v3}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    .line 485
    invoke-virtual {p1, v4}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1, v5}, Landroid/view/ContentInfo$Builder;->setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    .line 487
    invoke-virtual {p1, v6}, Landroid/view/ContentInfo$Builder;->setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object p1

    .line 482
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

    .line 466
    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/ContentInfo;
    .registers 2

    .line 493
    new-array p1, p1, [Landroid/view/ContentInfo;

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

    .line 466
    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$1;->newArray(I)[Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
