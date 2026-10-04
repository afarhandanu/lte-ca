.class public abstract Landroid/view/IInputMonitorHost$Stub;
.super Landroid/os/Binder;
.source "IInputMonitorHost.java"

# interfaces
.implements Landroid/view/IInputMonitorHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IInputMonitorHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputMonitorHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dispose:I = 0x2

.field static final blacklist TRANSACTION_pilferPointers:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.view.IInputMonitorHost"

    invoke-virtual {p0, p0, v0}, Landroid/view/IInputMonitorHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IInputMonitorHost;
    .registers 3

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "android.view.IInputMonitorHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IInputMonitorHost;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Landroid/view/IInputMonitorHost;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Landroid/view/IInputMonitorHost$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IInputMonitorHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 58
    packed-switch p0, :pswitch_data_c

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 66
    :pswitch_5
    const-string p0, "dispose"

    return-object p0

    .line 62
    :pswitch_8
    const-string/jumbo p0, "pilferPointers"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {p1}, Landroid/view/IInputMonitorHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 81
    nop

    .line 82
    const-string v0, "android.view.IInputMonitorHost"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_17
    packed-switch p1, :pswitch_data_28

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_1f
    invoke-virtual {p0}, Landroid/view/IInputMonitorHost$Stub;->dispose()V

    .line 99
    goto :goto_27

    .line 93
    :pswitch_23
    invoke-virtual {p0}, Landroid/view/IInputMonitorHost$Stub;->pilferPointers()V

    .line 94
    nop

    .line 106
    :goto_27
    return v1

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
