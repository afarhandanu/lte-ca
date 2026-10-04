.class public abstract Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;
.super Landroid/os/Binder;
.source "ISelectionToolbarCallback.java"

# interfaces
.implements Landroid/view/selectiontoolbar/ISelectionToolbarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onMenuItemClicked:I = 0x3

.field static final blacklist TRANSACTION_onShown:I = 0x1

.field static final blacklist TRANSACTION_onWidgetUpdated:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 67
    packed-switch p0, :pswitch_data_16

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 83
    :pswitch_5
    const-string/jumbo p0, "onError"

    return-object p0

    .line 79
    :pswitch_9
    const-string/jumbo p0, "onMenuItemClicked"

    return-object p0

    .line 75
    :pswitch_d
    const-string/jumbo p0, "onWidgetUpdated"

    return-object p0

    .line 71
    :pswitch_11
    const-string/jumbo p0, "onShown"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 221
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 94
    invoke-static {p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 98
    nop

    .line 99
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 106
    :cond_17
    packed-switch p1, :pswitch_data_58

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 135
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, p1, p3}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onError(II)V

    .line 140
    goto :goto_57

    .line 127
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onMenuItemClicked(I)V

    .line 130
    goto :goto_57

    .line 119
    :pswitch_39
    sget-object p1, Landroid/view/selectiontoolbar/WidgetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/selectiontoolbar/WidgetInfo;

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 122
    goto :goto_57

    .line 111
    :pswitch_48
    sget-object p1, Landroid/view/selectiontoolbar/WidgetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/selectiontoolbar/WidgetInfo;

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 114
    nop

    .line 147
    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_48
        :pswitch_39
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
