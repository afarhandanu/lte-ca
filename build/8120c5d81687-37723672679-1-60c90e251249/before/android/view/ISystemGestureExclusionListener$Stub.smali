.class public abstract Landroid/view/ISystemGestureExclusionListener$Stub;
.super Landroid/os/Binder;
.source "ISystemGestureExclusionListener.java"

# interfaces
.implements Landroid/view/ISystemGestureExclusionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISystemGestureExclusionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISystemGestureExclusionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSystemGestureExclusionChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.view.ISystemGestureExclusionListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/ISystemGestureExclusionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.view.ISystemGestureExclusionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/ISystemGestureExclusionListener;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/view/ISystemGestureExclusionListener;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/view/ISystemGestureExclusionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/ISystemGestureExclusionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_a

    .line 79
    const/4 p0, 0x0

    return-object p0

    .line 75
    :pswitch_5
    const-string/jumbo p0, "onSystemGestureExclusionChanged"

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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 86
    invoke-static {p1}, Landroid/view/ISystemGestureExclusionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    nop

    .line 91
    const-string v0, "android.view.ISystemGestureExclusionListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 98
    :cond_17
    packed-switch p1, :pswitch_data_3c

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 103
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    sget-object p3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Region;

    .line 107
    sget-object p4, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Region;

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, p1, p3, p4}, Landroid/view/ISystemGestureExclusionListener$Stub;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V

    .line 110
    nop

    .line 117
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
