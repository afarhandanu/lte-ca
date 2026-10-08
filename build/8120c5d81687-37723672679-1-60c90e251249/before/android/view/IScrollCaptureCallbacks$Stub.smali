.class public abstract Landroid/view/IScrollCaptureCallbacks$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureCallbacks.java"

# interfaces
.implements Landroid/view/IScrollCaptureCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IScrollCaptureCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IScrollCaptureCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCaptureEnded:I = 0x3

.field static final blacklist TRANSACTION_onCaptureStarted:I = 0x1

.field static final blacklist TRANSACTION_onImageRequestCompleted:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.view.IScrollCaptureCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/view/IScrollCaptureCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureCallbacks;
    .registers 3

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "android.view.IScrollCaptureCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IScrollCaptureCallbacks;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Landroid/view/IScrollCaptureCallbacks;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Landroid/view/IScrollCaptureCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IScrollCaptureCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 78
    packed-switch p0, :pswitch_data_12

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 90
    :pswitch_5
    const-string/jumbo p0, "onCaptureEnded"

    return-object p0

    .line 86
    :pswitch_9
    const-string/jumbo p0, "onImageRequestCompleted"

    return-object p0

    .line 82
    :pswitch_d
    const-string/jumbo p0, "onCaptureStarted"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 101
    invoke-static {p1}, Landroid/view/IScrollCaptureCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    nop

    .line 106
    const-string v0, "android.view.IScrollCaptureCallbacks"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_17
    packed-switch p1, :pswitch_data_3c

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_1f
    invoke-virtual {p0}, Landroid/view/IScrollCaptureCallbacks$Stub;->onCaptureEnded()V

    .line 133
    goto :goto_3a

    .line 123
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 125
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1, p3}, Landroid/view/IScrollCaptureCallbacks$Stub;->onImageRequestCompleted(ILandroid/graphics/Rect;)V

    .line 128
    goto :goto_3a

    .line 117
    :pswitch_36
    invoke-virtual {p0}, Landroid/view/IScrollCaptureCallbacks$Stub;->onCaptureStarted()V

    .line 118
    nop

    .line 140
    :goto_3a
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
