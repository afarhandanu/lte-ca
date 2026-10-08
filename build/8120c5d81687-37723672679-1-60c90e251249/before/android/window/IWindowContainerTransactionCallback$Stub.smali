.class public abstract Landroid/window/IWindowContainerTransactionCallback$Stub;
.super Landroid/os/Binder;
.source "IWindowContainerTransactionCallback.java"

# interfaces
.implements Landroid/window/IWindowContainerTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowContainerTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowContainerTransactionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onTransactionReady:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.window.IWindowContainerTransactionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/window/IWindowContainerTransactionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;
    .registers 3

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_4
    const-string v0, "android.window.IWindowContainerTransactionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/IWindowContainerTransactionCallback;

    if-eqz v1, :cond_13

    .line 48
    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    return-object v0

    .line 50
    :cond_13
    new-instance v0, Landroid/window/IWindowContainerTransactionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IWindowContainerTransactionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 59
    packed-switch p0, :pswitch_data_a

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 63
    :pswitch_5
    const-string/jumbo p0, "onTransactionReady"

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

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 74
    invoke-static {p1}, Landroid/window/IWindowContainerTransactionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 78
    nop

    .line 79
    const-string v0, "android.window.IWindowContainerTransactionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 86
    :cond_17
    packed-switch p1, :pswitch_data_34

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 91
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    sget-object p3, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/SurfaceControl$Transaction;

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, p1, p3}, Landroid/window/IWindowContainerTransactionCallback$Stub;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    .line 96
    nop

    .line 103
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
