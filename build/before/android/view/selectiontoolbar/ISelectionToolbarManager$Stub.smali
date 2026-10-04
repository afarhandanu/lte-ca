.class public abstract Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;
.super Landroid/os/Binder;
.source "ISelectionToolbarManager.java"

# interfaces
.implements Landroid/view/selectiontoolbar/ISelectionToolbarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/selectiontoolbar/ISelectionToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dismissToolbar:I = 0x3

.field static final blacklist TRANSACTION_hideToolbar:I = 0x2

.field static final blacklist TRANSACTION_showToolbar:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarManager;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_10

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 77
    :pswitch_5
    const-string p0, "dismissToolbar"

    return-object p0

    .line 73
    :pswitch_8
    const-string p0, "hideToolbar"

    return-object p0

    .line 69
    :pswitch_b
    const-string/jumbo p0, "showToolbar"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
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

    .line 186
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p1}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    nop

    .line 93
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_17
    packed-switch p1, :pswitch_data_40

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_1f
    invoke-virtual {p0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->dismissToolbar()V

    .line 120
    goto :goto_3e

    .line 114
    :pswitch_23
    invoke-virtual {p0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->hideToolbar()V

    .line 115
    goto :goto_3e

    .line 105
    :pswitch_27
    sget-object p1, Landroid/view/selectiontoolbar/ShowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/selectiontoolbar/ShowInfo;

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    move-result-object p3

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, p1, p3}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    .line 110
    nop

    .line 127
    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
