.class Landroid/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/AbsSavedState;
    .registers 3

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/AbsSavedState;
    .registers 3

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    .line 94
    if-nez p1, :cond_9

    .line 97
    sget-object p1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object p1

    .line 95
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Landroid/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/AbsSavedState;
    .registers 2

    .line 102
    new-array p1, p1, [Landroid/view/AbsSavedState;

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

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/AbsSavedState$2;->newArray(I)[Landroid/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method
