.class public abstract Landroid/window/IOnBackInvokedCallback$Stub;
.super Landroid/os/Binder;
.source "IOnBackInvokedCallback.java"

# interfaces
.implements Landroid/window/IOnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IOnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IOnBackInvokedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBackCancelled:I = 0x3

.field static final blacklist TRANSACTION_onBackInvoked:I = 0x4

.field static final blacklist TRANSACTION_onBackProgressed:I = 0x2

.field static final blacklist TRANSACTION_onBackStarted:I = 0x1

.field static final blacklist TRANSACTION_setHandoffHandler:I = 0x6

.field static final blacklist TRANSACTION_setTriggerBack:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-virtual {p0, p0, v0}, Landroid/window/IOnBackInvokedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;
    .registers 3

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_4
    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/IOnBackInvokedCallback;

    if-eqz v1, :cond_13

    .line 89
    check-cast v0, Landroid/window/IOnBackInvokedCallback;

    return-object v0

    .line 91
    :cond_13
    new-instance v0, Landroid/window/IOnBackInvokedCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IOnBackInvokedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 100
    packed-switch p0, :pswitch_data_1e

    .line 128
    const/4 p0, 0x0

    return-object p0

    .line 124
    :pswitch_5
    const-string/jumbo p0, "setHandoffHandler"

    return-object p0

    .line 120
    :pswitch_9
    const-string/jumbo p0, "setTriggerBack"

    return-object p0

    .line 116
    :pswitch_d
    const-string/jumbo p0, "onBackInvoked"

    return-object p0

    .line 112
    :pswitch_11
    const-string/jumbo p0, "onBackCancelled"

    return-object p0

    .line 108
    :pswitch_15
    const-string/jumbo p0, "onBackProgressed"

    return-object p0

    .line 104
    :pswitch_19
    const-string/jumbo p0, "onBackStarted"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 318
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 135
    invoke-static {p1}, Landroid/window/IOnBackInvokedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 139
    nop

    .line 140
    const-string v0, "android.window.IOnBackInvokedCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v1

    .line 147
    :cond_17
    packed-switch p1, :pswitch_data_60

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 186
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IBackAnimationHandoffHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationHandoffHandler;

    move-result-object p1

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, p1}, Landroid/window/IOnBackInvokedCallback$Stub;->setHandoffHandler(Landroid/window/IBackAnimationHandoffHandler;)V

    .line 189
    goto :goto_5f

    .line 178
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, p1}, Landroid/window/IOnBackInvokedCallback$Stub;->setTriggerBack(Z)V

    .line 181
    goto :goto_5f

    .line 172
    :pswitch_39
    invoke-virtual {p0}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackInvoked()V

    .line 173
    goto :goto_5f

    .line 167
    :pswitch_3d
    invoke-virtual {p0}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackCancelled()V

    .line 168
    goto :goto_5f

    .line 160
    :pswitch_41
    sget-object p1, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/BackMotionEvent;

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 163
    goto :goto_5f

    .line 152
    :pswitch_50
    sget-object p1, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/BackMotionEvent;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackStarted(Landroid/window/BackMotionEvent;)V

    .line 155
    nop

    .line 196
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_50
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
