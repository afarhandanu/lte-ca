.class Landroid/view/IDecorViewGestureListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDecorViewGestureListener.java"

# interfaces
.implements Landroid/view/IDecorViewGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDecorViewGestureListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/view/IDecorViewGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/view/IDecorViewGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 124
    const-string v0, "android.view.IDecorViewGestureListener"

    return-object v0
.end method

.method public blacklist onInterceptionChanged(Landroid/os/IBinder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Landroid/view/IDecorViewGestureListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 136
    :try_start_8
    const-string v1, "android.view.IDecorViewGestureListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 138
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 139
    iget-object p1, p0, Landroid/view/IDecorViewGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw p1
.end method
