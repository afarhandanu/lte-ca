.class public abstract Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
.super Landroid/os/Binder;
.source "IAppTransitionAnimationSpecsFuture.java"

# interfaces
.implements Landroid/view/IAppTransitionAnimationSpecsFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IAppTransitionAnimationSpecsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IAppTransitionAnimationSpecsFuture"

.field static final greylist-max-o TRANSACTION_get:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.view.IAppTransitionAnimationSpecsFuture"

    invoke-virtual {p0, p0, v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.view.IAppTransitionAnimationSpecsFuture"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 60
    packed-switch p0, :pswitch_data_8

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 64
    :pswitch_5
    const-string p0, "get"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 75
    invoke-static {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    nop

    .line 80
    const-string v0, "android.view.IAppTransitionAnimationSpecsFuture"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_17
    packed-switch p1, :pswitch_data_2c

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 91
    :pswitch_1f
    invoke-virtual {p0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 94
    nop

    .line 101
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
