.class public abstract Landroid/view/IDecorViewGestureListener$Stub;
.super Landroid/os/Binder;
.source "IDecorViewGestureListener.java"

# interfaces
.implements Landroid/view/IDecorViewGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDecorViewGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDecorViewGestureListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInterceptionChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.view.IDecorViewGestureListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDecorViewGestureListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IDecorViewGestureListener;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.view.IDecorViewGestureListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IDecorViewGestureListener;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/view/IDecorViewGestureListener;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/view/IDecorViewGestureListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IDecorViewGestureListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_a

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 69
    :pswitch_5
    const-string/jumbo p0, "onInterceptionChanged"

    return-object p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 80
    invoke-static {p1}, Landroid/view/IDecorViewGestureListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 84
    nop

    .line 85
    const-string v0, "android.view.IDecorViewGestureListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_17
    packed-switch p1, :pswitch_data_30

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 97
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, p1, p3}, Landroid/view/IDecorViewGestureListener$Stub;->onInterceptionChanged(Landroid/os/IBinder;Z)V

    .line 102
    nop

    .line 109
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
