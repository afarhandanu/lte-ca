.class public abstract Landroid/view/ISurfaceControlViewHost$Stub;
.super Landroid/os/Binder;
.source "ISurfaceControlViewHost.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISurfaceControlViewHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_attachParentInterface:I = 0x6

.field static final blacklist TRANSACTION_getSurfaceSyncGroup:I = 0x5

.field static final blacklist TRANSACTION_onConfigurationChanged:I = 0x1

.field static final blacklist TRANSACTION_onDispatchAttachedToWindow:I = 0x2

.field static final blacklist TRANSACTION_onDispatchDetachedFromWindow:I = 0x3

.field static final blacklist TRANSACTION_onInsetsChanged:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-virtual {p0, p0, v0}, Landroid/view/ISurfaceControlViewHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHost;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/ISurfaceControlViewHost;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Landroid/view/ISurfaceControlViewHost;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 82
    packed-switch p0, :pswitch_data_1c

    .line 110
    const/4 p0, 0x0

    return-object p0

    .line 106
    :pswitch_5
    const-string p0, "attachParentInterface"

    return-object p0

    .line 102
    :pswitch_8
    const-string p0, "getSurfaceSyncGroup"

    return-object p0

    .line 98
    :pswitch_b
    const-string/jumbo p0, "onInsetsChanged"

    return-object p0

    .line 94
    :pswitch_f
    const-string/jumbo p0, "onDispatchDetachedFromWindow"

    return-object p0

    .line 90
    :pswitch_13
    const-string/jumbo p0, "onDispatchAttachedToWindow"

    return-object p0

    .line 86
    :pswitch_17
    const-string/jumbo p0, "onConfigurationChanged"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 294
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 117
    invoke-static {p1}, Landroid/view/ISurfaceControlViewHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 121
    nop

    .line 122
    const-string v0, "android.view.ISurfaceControlViewHost"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 129
    :cond_17
    packed-switch p1, :pswitch_data_74

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 172
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ISurfaceControlViewHostParent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHostParent;

    move-result-object p1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1}, Landroid/view/ISurfaceControlViewHost$Stub;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    .line 175
    goto :goto_72

    .line 164
    :pswitch_2e
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;

    move-result-object p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 167
    goto :goto_72

    .line 155
    :pswitch_39
    sget-object p1, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsState;

    .line 157
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3}, Landroid/view/ISurfaceControlViewHost$Stub;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    .line 160
    goto :goto_72

    .line 149
    :pswitch_50
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->onDispatchDetachedFromWindow()V

    .line 150
    goto :goto_72

    .line 142
    :pswitch_54
    sget-object p1, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/InputTransferToken;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/ISurfaceControlViewHost$Stub;->onDispatchAttachedToWindow(Landroid/window/InputTransferToken;)V

    .line 145
    goto :goto_72

    .line 134
    :pswitch_63
    sget-object p1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1}, Landroid/view/ISurfaceControlViewHost$Stub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    nop

    .line 182
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_63
        :pswitch_54
        :pswitch_50
        :pswitch_39
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
