.class Landroid/view/IWindowManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 3543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3544
    iput-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3545
    return-void
.end method


# virtual methods
.method public blacklist addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4190
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4193
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4195
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4201
    nop

    .line 4202
    return-void

    .line 4199
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4201
    throw p1
.end method

.method public blacklist addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3982
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3986
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3989
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3992
    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 3995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3997
    nop

    .line 3998
    return-object p1

    .line 3995
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3997
    throw p1
.end method

.method public blacklist addToSurfaceSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6592
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6596
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6599
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6600
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x93

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6602
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 6603
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_32

    .line 6604
    invoke-virtual {p4, v1}, Landroid/window/AddToSurfaceSyncGroupResult;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 6608
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6610
    nop

    .line 6611
    return p1

    .line 6608
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6610
    throw p1
.end method

.method public blacklist addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3914
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3917
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3920
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3921
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3922
    iget-object p2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x13

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 3926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3928
    nop

    .line 3929
    return-void

    .line 3926
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3928
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 3548
    iget-object v0, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6132
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6136
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6138
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6139
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6140
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6141
    const/4 p1, 0x0

    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6142
    iget-object p2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x80

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6144
    sget-object p1, Landroid/window/WindowContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContextInfo;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 6147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6149
    nop

    .line 6150
    return-object p1

    .line 6147
    :catchall_3b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6149
    throw p1
.end method

.method public blacklist attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6212
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6216
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6218
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6219
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6220
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x82

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6222
    sget-object p1, Landroid/window/WindowContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContextInfo;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 6225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6227
    nop

    .line 6228
    return-object p1

    .line 6225
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6227
    throw p1
.end method

.method public blacklist attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6176
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6180
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6183
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6184
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x81

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6186
    sget-object p1, Landroid/window/WindowContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContextInfo;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 6189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6191
    nop

    .line 6192
    return-object p1

    .line 6189
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6191
    throw p1
.end method

.method public blacklist captureDisplay(ILandroid/window/ScreenCaptureInternal$CaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6535
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6537
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6539
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6540
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6541
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x90

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 6544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6545
    nop

    .line 6546
    return-void

    .line 6544
    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6545
    throw p1
.end method

.method public greylist-max-o clearForcedDisplayDensityForUser(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3781
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3784
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3786
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3787
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3793
    nop

    .line 3794
    return-void

    .line 3791
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3793
    throw p1
.end method

.method public greylist-max-o clearForcedDisplaySize(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3688
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3691
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3693
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3699
    nop

    .line 3700
    return-void

    .line 3697
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3699
    throw p1
.end method

.method public greylist-max-o clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5042
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5046
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5048
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5050
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5055
    nop

    .line 5056
    return p1

    .line 5053
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5055
    throw p1
.end method

.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4236
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4239
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4241
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    nop

    .line 4248
    return-void

    .line 4245
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    throw p1
.end method

.method public blacklist createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5208
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5211
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5214
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5215
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x56

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2e

    .line 5218
    invoke-virtual {p4, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 5222
    :cond_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5224
    nop

    .line 5225
    return-void

    .line 5222
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5224
    throw p1
.end method

.method public blacklist destroyInputConsumer(Landroid/os/IBinder;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5232
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5236
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5239
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x57

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5241
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5246
    nop

    .line 5247
    return p1

    .line 5244
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5246
    throw p1
.end method

.method public blacklist detachWindowContext(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6238
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6240
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6242
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x83

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 6245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6246
    nop

    .line 6247
    return-void

    .line 6245
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6246
    throw p1
.end method

.method public blacklist disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4084
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4087
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4088
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4089
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4091
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4097
    nop

    .line 4098
    return-void

    .line 4095
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4097
    throw p1
.end method

.method public greylist-max-o dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4168
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4171
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4173
    const/4 p1, 0x0

    if-eqz p2, :cond_1f

    .line 4174
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4175
    invoke-static {p2, v0, p1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_22

    .line 4178
    :cond_1f
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4180
    :goto_22
    iget-object p2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 4184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4186
    nop

    .line 4187
    return-void

    .line 4184
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4186
    throw p1
.end method

.method public greylist-max-o endProlongedAnimations()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4068
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4071
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4072
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 4076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4078
    nop

    .line 4079
    return-void

    .line 4076
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4078
    throw v2
.end method

.method public greylist-max-o exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4118
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4121
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4123
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4124
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4129
    nop

    .line 4130
    return-void

    .line 4127
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4129
    throw p1
.end method

.method public blacklist freezeDisplayRotation(IILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4687
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4690
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4691
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4692
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4693
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4694
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    nop

    .line 4701
    return-void

    .line 4698
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    throw p1
.end method

.method public blacklist freezeRotation(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4604
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4607
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4609
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4610
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x37

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4611
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4616
    nop

    .line 4617
    return-void

    .line 4614
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4616
    throw p1
.end method

.method public greylist-max-o getAnimationScale(I)F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4252
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4256
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4258
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4260
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4265
    nop

    .line 4266
    return p1

    .line 4263
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4265
    throw p1
.end method

.method public greylist-max-o getAnimationScales()[F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4270
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4274
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4275
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4277
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 4280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4282
    nop

    .line 4283
    return-object v2

    .line 4280
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4282
    throw v2
.end method

.method public blacklist getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6819
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6823
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6824
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6825
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6827
    sget-object p1, Landroid/view/KeyboardShortcutGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/KeyboardShortcutGroup;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6832
    nop

    .line 6833
    return-object p1

    .line 6830
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6832
    throw p1
.end method

.method public greylist getBaseDisplayDensity(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3721
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3725
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3727
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3729
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3734
    nop

    .line 3735
    return p1

    .line 3732
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3734
    throw p1
.end method

.method public greylist-max-o getBaseDisplaySize(ILandroid/graphics/Point;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3653
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3656
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3658
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27

    .line 3661
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 3665
    :cond_27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3667
    nop

    .line 3668
    return-void

    .line 3665
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3667
    throw p1
.end method

.method public greylist-max-o getCurrentAnimatorScale()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4318
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4322
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4323
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 4328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4330
    nop

    .line 4331
    return v2

    .line 4328
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4330
    throw v2
.end method

.method public greylist-max-o getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5252
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5256
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5257
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5259
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5264
    nop

    .line 5265
    return-object v2

    .line 5262
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5264
    throw v2
.end method

.method public greylist-max-o getDefaultDisplayRotation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4454
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4458
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4459
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 4464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4466
    nop

    .line 4467
    return v2

    .line 4464
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4466
    throw v2
.end method

.method public blacklist getDisplayIdByUniqueId(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3739
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3743
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3745
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3747
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    nop

    .line 3753
    return p1

    .line 3750
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    throw p1
.end method

.method public blacklist getDisplayImePolicy(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5682
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5686
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5688
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5690
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5695
    nop

    .line 5696
    return p1

    .line 5693
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5695
    throw p1
.end method

.method public blacklist getDisplayUserRotation(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4478
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4482
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4484
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4491
    nop

    .line 4492
    return p1

    .line 4489
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4491
    throw p1
.end method

.method public greylist getDockedStackSide()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5085
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5089
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5090
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5092
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5097
    nop

    .line 5098
    return v2

    .line 5095
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5097
    throw v2
.end method

.method public blacklist getIgnoreOrientationRequest(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6838
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6842
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6843
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6844
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6846
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6851
    nop

    .line 6852
    return p1

    .line 6849
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6851
    throw p1
.end method

.method public blacklist getImeDisplayId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6355
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6359
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6360
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6367
    nop

    .line 6368
    return v2

    .line 6365
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6367
    throw v2
.end method

.method public greylist getInitialDisplayDensity(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3703
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3707
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3709
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3716
    nop

    .line 3717
    return p1

    .line 3714
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3716
    throw p1
.end method

.method public greylist-max-o getInitialDisplaySize(ILandroid/graphics/Point;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3635
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3638
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3640
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27

    .line 3643
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 3647
    :cond_27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3649
    nop

    .line 3650
    return-void

    .line 3647
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3649
    throw p1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 3552
    const-string v0, "android.view.IWindowManager"

    return-object v0
.end method

.method public blacklist getLetterboxBackgroundColorInArgb()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6492
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6496
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6497
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6504
    nop

    .line 6505
    return v2

    .line 6502
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6504
    throw v2
.end method

.method public blacklist getPossibleDisplayInfo(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5916
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5920
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5922
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x77

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5924
    sget-object p1, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5929
    nop

    .line 5930
    return-object p1

    .line 5927
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5929
    throw p1
.end method

.method public blacklist getPreferredOptionsPanelGravity(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4565
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4569
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4571
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4572
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4573
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4578
    nop

    .line 4579
    return p1

    .line 4576
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4578
    throw p1
.end method

.method public blacklist getRemoveContentMode(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5509
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5513
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5515
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5522
    nop

    .line 5523
    return p1

    .line 5520
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5522
    throw p1
.end method

.method public greylist-max-o getStableInsets(ILandroid/graphics/Rect;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5168
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5171
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5173
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x54

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5175
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_28

    .line 5176
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 5180
    :cond_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5182
    nop

    .line 5183
    return-void

    .line 5180
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5182
    throw p1
.end method

.method public blacklist getSupportedDisplayHashAlgorithms()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6041
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6045
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6046
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6048
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6053
    nop

    .line 6054
    return-object v2

    .line 6051
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6053
    throw v2
.end method

.method public greylist-max-o getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5066
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5070
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5072
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5074
    sget-object p1, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowContentFrameStats;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 5077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5079
    nop

    .line 5080
    return-object p1

    .line 5077
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5079
    throw p1
.end method

.method public blacklist getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5889
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5892
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5895
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x76

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b

    .line 5898
    invoke-virtual {p3, v1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 5902
    :cond_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5904
    nop

    .line 5905
    return-void

    .line 5902
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5904
    throw p1
.end method

.method public blacklist getWindowingMode(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5456
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5460
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5462
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    nop

    .line 5470
    return p1

    .line 5467
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    throw p1
.end method

.method public greylist hasNavigationBar(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4984
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4988
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4990
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4992
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4997
    nop

    .line 4998
    return p1

    .line 4995
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4997
    throw p1
.end method

.method public blacklist hideTransientBars(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4920
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4922
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4924
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x47

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 4927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4928
    nop

    .line 4929
    return-void

    .line 4927
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4928
    throw p1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6018
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6021
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6023
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6024
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x7c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 6028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6030
    nop

    .line 6031
    return-void

    .line 6028
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6030
    throw p1
.end method

.method public blacklist isDisplayRotationFrozen(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4732
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4736
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4738
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4740
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4745
    nop

    .line 4746
    return p1

    .line 4743
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4745
    throw p1
.end method

.method public blacklist isEligibleForDesktopMode(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5656
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5660
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5662
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5664
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5669
    nop

    .line 5670
    return p1

    .line 5667
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5669
    throw p1
.end method

.method public blacklist isGlobalKey(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6569
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6573
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6574
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6575
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x92

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6577
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6582
    nop

    .line 6583
    return p1

    .line 6580
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6582
    throw p1
.end method

.method public blacklist isInTouchMode(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4373
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4377
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4379
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4380
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4381
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4386
    nop

    .line 4387
    return p1

    .line 4384
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4386
    throw p1
.end method

.method public greylist-max-o isKeyguardLocked()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4133
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4137
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4138
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4140
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4145
    nop

    .line 4146
    return v2

    .line 4143
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4145
    throw v2
.end method

.method public blacklist isKeyguardSecure(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4150
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4154
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4156
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4158
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4163
    nop

    .line 4164
    return p1

    .line 4161
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4163
    throw p1
.end method

.method public blacklist isLayerTracing()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5764
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5768
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5769
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5771
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5776
    nop

    .line 5777
    return v2

    .line 5774
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5776
    throw v2
.end method

.method public blacklist isLetterboxBackgroundMultiColored()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6514
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6518
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6519
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6521
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6526
    nop

    .line 6527
    return v2

    .line 6524
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6526
    throw v2
.end method

.method public greylist-max-o isRotationFrozen()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4643
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4647
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4648
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4650
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 4653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4655
    nop

    .line 4656
    return v2

    .line 4653
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4655
    throw v2
.end method

.method public greylist-max-o isSafeModeEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5019
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5023
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5024
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5026
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5031
    nop

    .line 5032
    return v2

    .line 5029
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5031
    throw v2
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6333
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6337
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6338
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6340
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6345
    nop

    .line 6346
    return v2

    .line 6343
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6345
    throw v2
.end method

.method public blacklist isTransitionTraceEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5433
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5437
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5438
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5440
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5445
    nop

    .line 5446
    return v2

    .line 5443
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5445
    throw v2
.end method

.method public greylist-max-o isViewServerRunning()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3599
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3603
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3604
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3606
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3611
    nop

    .line 3612
    return v2

    .line 3609
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3611
    throw v2
.end method

.method public blacklist isWindowToken(Landroid/os/IBinder;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3888
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3892
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3894
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3896
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3901
    nop

    .line 3902
    return p1

    .line 3899
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3901
    throw p1
.end method

.method public greylist-max-o isWindowTraceEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5385
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5389
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5390
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5392
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5397
    nop

    .line 5398
    return v2

    .line 5395
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5397
    throw v2
.end method

.method public greylist-max-o lockNow(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5003
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5006
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5007
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5008
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5014
    nop

    .line 5015
    return-void

    .line 5012
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5014
    throw p1
.end method

.method public blacklist markSurfaceSyncGroupReady(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6616
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6618
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6620
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x94

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 6623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6624
    nop

    .line 6625
    return-void

    .line 6623
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6624
    throw p1
.end method

.method public blacklist mirrorDisplay(ILandroid/view/SurfaceControl;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5807
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5811
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5813
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x72

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5814
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5815
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 5816
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 5817
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 5821
    :cond_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5823
    nop

    .line 5824
    return p1

    .line 5821
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5823
    throw p1
.end method

.method public blacklist mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4808
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4812
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4814
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4816
    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 4819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    nop

    .line 4822
    return-object p1

    .line 4819
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    throw p1
.end method

.method public blacklist notifyScreenshotListeners(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6636
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6640
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6642
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x95

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6644
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6649
    nop

    .line 6650
    return-object p1

    .line 6647
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6649
    throw p1
.end method

.method public blacklist onNotificationShadeExpanded(Landroid/os/IBinder;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5725
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5728
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5730
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5731
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5737
    nop

    .line 5738
    return-void

    .line 5735
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5737
    throw p1
.end method

.method public blacklist openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3617
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3621
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3623
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3625
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3630
    nop

    .line 3631
    return-object p1

    .line 3628
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3630
    throw p1
.end method

.method public blacklist overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4030
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4033
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4035
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4036
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4037
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4038
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x18

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4039
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 4042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4044
    nop

    .line 4045
    return-void

    .line 4042
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4044
    throw p1
.end method

.method public blacklist overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4048
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4051
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4052
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4053
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4054
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4060
    nop

    .line 4061
    return-void

    .line 4058
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4060
    throw p1
.end method

.method public blacklist reenableKeyguard(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4102
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4105
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4108
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4114
    nop

    .line 4115
    return-void

    .line 4112
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4114
    throw p1
.end method

.method public blacklist refreshScreenCaptureDisabled()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4434
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4437
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4438
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 4442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4444
    nop

    .line 4445
    return-void

    .line 4442
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4444
    throw v2
.end method

.method public blacklist registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6294
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6298
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6300
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x85

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6302
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6307
    nop

    .line 6308
    return p1

    .line 6305
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6307
    throw p1
.end method

.method public blacklist registerDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6679
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6682
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6684
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6685
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x97

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 6689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6691
    nop

    .line 6692
    return-void

    .line 6689
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6691
    throw p1
.end method

.method public blacklist registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5270
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5273
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5275
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x59

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5281
    nop

    .line 5282
    return-void

    .line 5279
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5281
    throw p1
.end method

.method public blacklist registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5305
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5309
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5311
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5313
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5318
    nop

    .line 5319
    return-object p1

    .line 5316
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5318
    throw p1
.end method

.method public blacklist registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5103
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5106
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5109
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x51

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5115
    nop

    .line 5116
    return-void

    .line 5113
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5115
    throw p1
.end method

.method public blacklist registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4539
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4543
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4546
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x34

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4548
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4553
    nop

    .line 4554
    return p1

    .line 4551
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4553
    throw p1
.end method

.method public blacklist registerScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6746
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6750
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6752
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6753
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6754
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6759
    nop

    .line 6760
    return p1

    .line 6757
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6759
    throw p1
.end method

.method public greylist-max-o registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5191
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5194
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5195
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5196
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5197
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x55

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5203
    nop

    .line 5204
    return-void

    .line 5201
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5203
    throw p1
.end method

.method public blacklist registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4867
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4870
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4872
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4873
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x44

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4874
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4879
    nop

    .line 4880
    return-void

    .line 4877
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4879
    throw p1
.end method

.method public blacklist registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6403
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6406
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6408
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6409
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 6413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6415
    nop

    .line 6416
    return-void

    .line 6413
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6415
    throw p1
.end method

.method public blacklist registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6712
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6715
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6717
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6718
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6719
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6720
    iget-object p2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x99

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 6724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6726
    nop

    .line 6727
    return-void

    .line 6724
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6726
    throw p1
.end method

.method public greylist-max-o registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4830
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4834
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4836
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4837
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x42

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4838
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4839
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4844
    nop

    .line 4845
    return p1

    .line 4842
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4844
    throw p1
.end method

.method public blacklist removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4205
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4208
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4210
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4216
    nop

    .line 4217
    return-void

    .line 4214
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4216
    throw p1
.end method

.method public greylist-max-o removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4523
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4526
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4528
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4529
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    nop

    .line 4535
    return-void

    .line 4532
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    throw p1
.end method

.method public greylist-max-o removeWindowToken(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3938
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3941
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3943
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3944
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x14

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3945
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3950
    nop

    .line 3951
    return-void

    .line 3948
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3950
    throw p1
.end method

.method public blacklist reparentWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6268
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6272
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6275
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6276
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x84

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6278
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 6281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6283
    nop

    .line 6284
    return p1

    .line 6281
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6283
    throw p1
.end method

.method public blacklist replaceContentOnDisplay(ILandroid/view/SurfaceControl;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6659
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6663
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6665
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6666
    iget-object p2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x96

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6668
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6673
    nop

    .line 6674
    return p1

    .line 6671
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6673
    throw p1
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5127
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5130
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5133
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x52

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5134
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5139
    nop

    .line 5140
    return-void

    .line 5137
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5139
    throw p1
.end method

.method public blacklist requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4904
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4907
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4909
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4915
    nop

    .line 4916
    return-void

    .line 4913
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4915
    throw p1
.end method

.method public blacklist requestImeKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5151
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5154
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5156
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5157
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x53

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5163
    nop

    .line 5164
    return-void

    .line 5161
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5163
    throw p1
.end method

.method public blacklist requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5994
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5997
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6000
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6001
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6002
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x7b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 6006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6008
    nop

    .line 6009
    return-void

    .line 6006
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6008
    throw p1
.end method

.method public blacklist saveWindowTraceToFile()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5370
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5373
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5374
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 5378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5380
    nop

    .line 5381
    return-void

    .line 5378
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5380
    throw v2
.end method

.method public blacklist screenCapture(Landroid/window/ScreenCapture$ScreenCaptureParams;Landroid/window/IScreenCaptureCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6550
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6552
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6553
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6555
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x91

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 6558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6559
    nop

    .line 6560
    return-void

    .line 6558
    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6559
    throw p1
.end method

.method public greylist-max-o screenshotWallpaper()Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4785
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4789
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4790
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4792
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4797
    nop

    .line 4798
    return-object v2

    .line 4795
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4797
    throw v2
.end method

.method public blacklist setActiveTransactionTracing(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5970
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5973
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5975
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x7a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5981
    nop

    .line 5982
    return-void

    .line 5979
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5981
    throw p1
.end method

.method public greylist-max-o setAnimationScale(IF)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4287
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4290
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4292
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4293
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x27

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4299
    nop

    .line 4300
    return-void

    .line 4297
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4299
    throw p1
.end method

.method public greylist-max-o setAnimationScales([F)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4303
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4306
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 4308
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4314
    nop

    .line 4315
    return-void

    .line 4312
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4314
    throw p1
.end method

.method public blacklist setConfigurationChangeSettingsForUser(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/window/ConfigurationChangeSetting;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3838
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3841
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3842
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3844
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3850
    nop

    .line 3851
    return-void

    .line 3848
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3850
    throw p1
.end method

.method public blacklist setDeviceStateAutoRotateSetting(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4587
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4589
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4591
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4592
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x36

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 4595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4596
    nop

    .line 4597
    return-void

    .line 4595
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4596
    throw p1
.end method

.method public blacklist setDisplayChangeWindowController(Landroid/view/IDisplayChangeWindowController;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3959
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3962
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3963
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3964
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3965
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3970
    nop

    .line 3971
    return-void

    .line 3968
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3970
    throw p1
.end method

.method public blacklist setDisplayHashThrottlingEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6091
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6094
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6096
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x7f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6097
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6102
    nop

    .line 6103
    return-void

    .line 6100
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6102
    throw p1
.end method

.method public blacklist setDisplayImePolicy(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5708
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5711
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5714
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5720
    nop

    .line 5721
    return-void

    .line 5718
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5720
    throw p1
.end method

.method public blacklist setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5832
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5833
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5835
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5837
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5838
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x73

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5839
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5844
    nop

    .line 5845
    return-void

    .line 5842
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5844
    throw p1
.end method

.method public greylist-max-o setEventDispatching(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3872
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3875
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3877
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3878
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3883
    nop

    .line 3884
    return-void

    .line 3881
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3883
    throw p1
.end method

.method public blacklist setFixedToUserRotation(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4751
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4754
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4756
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4757
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4763
    nop

    .line 4764
    return-void

    .line 4761
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4763
    throw p1
.end method

.method public greylist-max-o setForcedDisplayDensityForUser(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3757
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3760
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3770
    nop

    .line 3771
    return-void

    .line 3768
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3770
    throw p1
.end method

.method public blacklist setForcedDisplayDensityRatio(IFI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3808
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3811
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3814
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3815
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3821
    nop

    .line 3822
    return-void

    .line 3819
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3821
    throw p1
.end method

.method public greylist-max-o setForcedDisplayScalingMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3854
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3857
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3860
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3866
    nop

    .line 3867
    return-void

    .line 3864
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3866
    throw p1
.end method

.method public greylist-max-o setForcedDisplaySize(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3671
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3674
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3676
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3677
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3678
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3679
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3684
    nop

    .line 3685
    return-void

    .line 3682
    :catchall_2c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3684
    throw p1
.end method

.method public blacklist setGlobalDragListener(Landroid/window/IGlobalDragListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6780
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6783
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6785
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6786
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6791
    nop

    .line 6792
    return-void

    .line 6789
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6791
    throw p1
.end method

.method public blacklist setIgnoreOrientationRequest(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4768
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4771
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4773
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4774
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4780
    nop

    .line 4781
    return-void

    .line 4778
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4780
    throw p1
.end method

.method public blacklist setInTouchMode(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4339
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4342
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4345
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4351
    nop

    .line 4352
    return-void

    .line 4349
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4351
    throw p1
.end method

.method public blacklist setInTouchModeOnAllDisplays(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4357
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4360
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4362
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4368
    nop

    .line 4369
    return-void

    .line 4366
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4368
    throw p1
.end method

.method public blacklist setLayerTracing(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5782
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5785
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5787
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5793
    nop

    .line 5794
    return-void

    .line 5791
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5793
    throw p1
.end method

.method public blacklist setLayerTracingFlags(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5954
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5957
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5959
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x79

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5965
    nop

    .line 5966
    return-void

    .line 5963
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5965
    throw p1
.end method

.method public greylist-max-o setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4964
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4967
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4969
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4975
    nop

    .line 4976
    return-void

    .line 4973
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4975
    throw p1
.end method

.method public blacklist setRecentsAppBehindSystemBars(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6472
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6475
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6477
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6478
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6483
    nop

    .line 6484
    return-void

    .line 6481
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6483
    throw p1
.end method

.method public greylist-max-o setRecentsVisibility(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4933
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4935
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4937
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x48

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 4940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4941
    nop

    .line 4942
    return-void

    .line 4940
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4941
    throw p1
.end method

.method public blacklist setRemoveContentMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5539
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5542
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5543
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5544
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5545
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x67

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5551
    nop

    .line 5552
    return-void

    .line 5549
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5551
    throw p1
.end method

.method public blacklist setRotationAtAngleIfAllowed(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4661
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4664
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4667
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4668
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4673
    nop

    .line 4674
    return-void

    .line 4671
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4673
    throw p1
.end method

.method public blacklist setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4008
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4011
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4014
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4015
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4016
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4021
    nop

    .line 4022
    return-void

    .line 4019
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4021
    throw p1
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5598
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5601
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5604
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x69

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5610
    nop

    .line 5611
    return-void

    .line 5608
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5610
    throw p1
.end method

.method public greylist-max-o setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4415
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4418
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4420
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4426
    nop

    .line 4427
    return-void

    .line 4424
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4426
    throw p1
.end method

.method public greylist-max-o setSwitchingUser(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4221
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4224
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4226
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4232
    nop

    .line 4233
    return-void

    .line 4230
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4232
    throw p1
.end method

.method public blacklist setTaskSnapshotEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6376
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6379
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6381
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6387
    nop

    .line 6388
    return-void

    .line 6385
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6387
    throw p1
.end method

.method public blacklist setWindowingMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5480
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5483
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5486
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x65

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5492
    nop

    .line 5493
    return-void

    .line 5490
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5492
    throw p1
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5623
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5627
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5629
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5631
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5636
    nop

    .line 5637
    return p1

    .line 5634
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5636
    throw p1
.end method

.method public blacklist shouldShowWithInsecureKeyguard(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5571
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5575
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5577
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5579
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5584
    nop

    .line 5585
    return p1

    .line 5582
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5584
    throw p1
.end method

.method public blacklist showGlobalActions()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5935
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5938
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5939
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5940
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 5943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5945
    nop

    .line 5946
    return-void

    .line 5943
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5945
    throw v2
.end method

.method public greylist-max-o showStrictModeViolation(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4396
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4399
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4401
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4407
    nop

    .line 4408
    return-void

    .line 4405
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4407
    throw p1
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6450
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6454
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6456
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6458
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6463
    nop

    .line 6464
    return-object p1

    .line 6461
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6463
    throw p1
.end method

.method public blacklist startTransitionTrace()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5403
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5406
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5407
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 5411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5413
    nop

    .line 5414
    return-void

    .line 5411
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5413
    throw v2
.end method

.method public greylist-max-o startViewServer(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3562
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3566
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3568
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3570
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3575
    nop

    .line 3576
    return p1

    .line 3573
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3575
    throw p1
.end method

.method public greylist-max-o startWindowTrace()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5340
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5343
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5344
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 5348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5350
    nop

    .line 5351
    return-void

    .line 5348
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5350
    throw v2
.end method

.method public blacklist stopTransitionTrace()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5418
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5421
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5422
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 5426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5428
    nop

    .line 5429
    return-void

    .line 5426
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5428
    throw v2
.end method

.method public greylist-max-o stopViewServer()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3581
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3585
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3586
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3588
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3593
    nop

    .line 3594
    return v2

    .line 3591
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3593
    throw v2
.end method

.method public greylist-max-o stopWindowTrace()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5355
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5358
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5359
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 5363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5365
    nop

    .line 5366
    return-void

    .line 5363
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5365
    throw v2
.end method

.method public blacklist syncInputTransactions(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5748
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5751
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5752
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5753
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5759
    nop

    .line 5760
    return-void

    .line 5757
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5759
    throw p1
.end method

.method public blacklist thawDisplayRotation(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4710
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4713
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4716
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4722
    nop

    .line 4723
    return-void

    .line 4720
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4722
    throw p1
.end method

.method public blacklist thawRotation(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4624
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4627
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4629
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4635
    nop

    .line 4636
    return-void

    .line 4633
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4635
    throw p1
.end method

.method public blacklist transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6795
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6799
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6800
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6801
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6802
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9e

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6804
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6809
    nop

    .line 6810
    return p1

    .line 6807
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6809
    throw p1
.end method

.method public blacklist unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6318
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6321
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6323
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x86

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6329
    nop

    .line 6330
    return-void

    .line 6327
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6329
    throw p1
.end method

.method public blacklist unregisterDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6696
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6699
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6701
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6702
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x98

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 6706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6708
    nop

    .line 6709
    return-void

    .line 6706
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6708
    throw p1
.end method

.method public blacklist unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5286
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5289
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5291
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5297
    nop

    .line 5298
    return-void

    .line 5295
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5297
    throw p1
.end method

.method public blacklist unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5324
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5327
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5329
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5330
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5335
    nop

    .line 5336
    return-void

    .line 5333
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5335
    throw p1
.end method

.method public blacklist unregisterScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6764
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6767
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6769
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6775
    nop

    .line 6776
    return-void

    .line 6773
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6775
    throw p1
.end method

.method public blacklist unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4884
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4887
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4889
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4890
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x45

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4891
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4896
    nop

    .line 4897
    return-void

    .line 4894
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4896
    throw p1
.end method

.method public blacklist unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6427
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6430
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6432
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6433
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6438
    nop

    .line 6439
    return-void

    .line 6436
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6438
    throw p1
.end method

.method public blacklist unregisterTrustedPresentationListener(Landroid/window/ITrustedPresentationListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6730
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6733
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6735
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6736
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 6740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6742
    nop

    .line 6743
    return-void

    .line 6740
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6742
    throw p1
.end method

.method public greylist-max-o unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4850
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4853
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4854
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4855
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4856
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x43

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4857
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4862
    nop

    .line 4863
    return-void

    .line 4860
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4862
    throw p1
.end method

.method public blacklist updateDisplayWindowAnimatingTypes(IILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5871
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5874
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5877
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5878
    iget-object p2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x75

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5884
    nop

    .line 5885
    return-void

    .line 5882
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5884
    throw p1
.end method

.method public blacklist updateDisplayWindowRequestedVisibleTypes(IIILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5852
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5855
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5858
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5859
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5860
    iget-object p2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x74

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 5864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5866
    nop

    .line 5867
    return-void

    .line 5864
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5866
    throw p1
.end method

.method public blacklist updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4950
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4952
    :try_start_8
    const-string v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4953
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4954
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4955
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x49

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 4958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4959
    nop

    .line 4960
    return-void

    .line 4958
    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4959
    throw p1
.end method

.method public blacklist verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6066
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6070
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6071
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6072
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6074
    sget-object p1, Landroid/view/displayhash/VerifiedDisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/displayhash/VerifiedDisplayHash;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 6077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6079
    nop

    .line 6080
    return-object p1

    .line 6077
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6079
    throw p1
.end method

.method public greylist watchRotation(Landroid/view/IRotationWatcher;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4500
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4504
    :try_start_c
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4506
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4507
    iget-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x32

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4508
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4509
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4514
    nop

    .line 4515
    return p1

    .line 4512
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4514
    throw p1
.end method
