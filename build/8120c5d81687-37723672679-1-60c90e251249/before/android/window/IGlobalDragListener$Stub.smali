.class public abstract Landroid/window/IGlobalDragListener$Stub;
.super Landroid/os/Binder;
.source "IGlobalDragListener.java"

# interfaces
.implements Landroid/window/IGlobalDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IGlobalDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IGlobalDragListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCrossWindowDrop:I = 0x1

.field static final blacklist TRANSACTION_onUnhandledDrop:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.window.IGlobalDragListener"

    invoke-virtual {p0, p0, v0}, Landroid/window/IGlobalDragListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IGlobalDragListener;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.window.IGlobalDragListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/IGlobalDragListener;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/window/IGlobalDragListener;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/window/IGlobalDragListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IGlobalDragListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_e

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string/jumbo p0, "onUnhandledDrop"

    return-object p0

    .line 76
    :pswitch_9
    const-string/jumbo p0, "onCrossWindowDrop"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/window/IGlobalDragListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    nop

    .line 96
    const-string v0, "android.window.IGlobalDragListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_17
    packed-switch p1, :pswitch_data_46

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 116
    :pswitch_1f
    sget-object p1, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/DragEvent;

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/window/IUnhandledDragCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IUnhandledDragCallback;

    move-result-object p3

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1, p3}, Landroid/window/IGlobalDragListener$Stub;->onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V

    .line 121
    goto :goto_45

    .line 108
    :pswitch_36
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, p1}, Landroid/window/IGlobalDragListener$Stub;->onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 111
    nop

    .line 128
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
