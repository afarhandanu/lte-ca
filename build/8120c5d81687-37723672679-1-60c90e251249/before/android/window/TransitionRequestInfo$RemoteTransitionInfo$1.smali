.class Landroid/window/TransitionRequestInfo$RemoteTransitionInfo$1;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;
    .registers 3

    .line 948
    new-instance v0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    invoke-direct {v0, p1}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 940
    invoke-virtual {p0, p1}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;
    .registers 2

    .line 943
    new-array p1, p1, [Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

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

    .line 940
    invoke-virtual {p0, p1}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo$1;->newArray(I)[Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    move-result-object p1

    return-object p1
.end method
