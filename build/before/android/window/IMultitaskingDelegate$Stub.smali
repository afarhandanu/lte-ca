.class public abstract Landroid/window/IMultitaskingDelegate$Stub;
.super Landroid/os/Binder;
.source "IMultitaskingDelegate.java"

# interfaces
.implements Landroid/window/IMultitaskingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IMultitaskingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IMultitaskingDelegate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createBubble:I = 0x1

.field static final blacklist TRANSACTION_removeBubble:I = 0x4

.field static final blacklist TRANSACTION_updateBubbleMessage:I = 0x3

.field static final blacklist TRANSACTION_updateBubbleState:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.window.IMultitaskingDelegate"

    invoke-virtual {p0, p0, v0}, Landroid/window/IMultitaskingDelegate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IMultitaskingDelegate;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.window.IMultitaskingDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/IMultitaskingDelegate;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/window/IMultitaskingDelegate;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/window/IMultitaskingDelegate$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IMultitaskingDelegate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_14

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 84
    :pswitch_5
    const-string/jumbo p0, "removeBubble"

    return-object p0

    .line 80
    :pswitch_9
    const-string/jumbo p0, "updateBubbleMessage"

    return-object p0

    .line 76
    :pswitch_d
    const-string/jumbo p0, "updateBubbleState"

    return-object p0

    .line 72
    :pswitch_11
    const-string p0, "createBubble"

    return-object p0

    :pswitch_data_14
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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 231
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/window/IMultitaskingDelegate$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    nop

    .line 100
    const-string v0, "android.window.IMultitaskingDelegate"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_17
    packed-switch p1, :pswitch_data_60

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 144
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, p1}, Landroid/window/IMultitaskingDelegate$Stub;->removeBubble(Landroid/os/IBinder;)V

    .line 147
    goto :goto_5f

    .line 134
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1, p3}, Landroid/window/IMultitaskingDelegate$Stub;->updateBubbleMessage(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 139
    goto :goto_5f

    .line 124
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1, p3}, Landroid/window/IMultitaskingDelegate$Stub;->updateBubbleState(Landroid/os/IBinder;Z)V

    .line 129
    goto :goto_5f

    .line 112
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 114
    sget-object p3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Intent;

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1, p3, p4}, Landroid/window/IMultitaskingDelegate$Stub;->createBubble(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 119
    nop

    .line 154
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_48
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
