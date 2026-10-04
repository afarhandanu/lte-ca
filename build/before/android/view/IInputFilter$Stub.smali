.class public abstract Landroid/view/IInputFilter$Stub;
.super Landroid/os/Binder;
.source "IInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IInputFilter"

.field static final greylist-max-o TRANSACTION_filterInputEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_install:I = 0x1

.field static final greylist-max-o TRANSACTION_uninstall:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.view.IInputFilter"

    invoke-virtual {p0, p0, v0}, Landroid/view/IInputFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;
    .registers 3

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    const-string v0, "android.view.IInputFilter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IInputFilter;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Landroid/view/IInputFilter;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Landroid/view/IInputFilter$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IInputFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 66
    packed-switch p0, :pswitch_data_10

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 78
    :pswitch_5
    const-string p0, "filterInputEvent"

    return-object p0

    .line 74
    :pswitch_8
    const-string/jumbo p0, "uninstall"

    return-object p0

    .line 70
    :pswitch_c
    const-string p0, "install"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 89
    invoke-static {p1}, Landroid/view/IInputFilter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    nop

    .line 94
    const-string v0, "android.view.IInputFilter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_17
    packed-switch p1, :pswitch_data_46

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_1f
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputEvent;

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, p1, p3}, Landroid/view/IInputFilter$Stub;->filterInputEvent(Landroid/view/InputEvent;I)V

    .line 124
    goto :goto_45

    .line 113
    :pswitch_32
    invoke-virtual {p0}, Landroid/view/IInputFilter$Stub;->uninstall()V

    .line 114
    goto :goto_45

    .line 106
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IInputFilterHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilterHost;

    move-result-object p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, p1}, Landroid/view/IInputFilter$Stub;->install(Landroid/view/IInputFilterHost;)V

    .line 109
    nop

    .line 131
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_36
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
