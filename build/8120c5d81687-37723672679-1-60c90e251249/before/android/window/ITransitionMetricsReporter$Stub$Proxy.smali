.class Landroid/window/ITransitionMetricsReporter$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITransitionMetricsReporter.java"

# interfaces
.implements Landroid/window/ITransitionMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITransitionMetricsReporter$Stub;
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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/window/ITransitionMetricsReporter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/window/ITransitionMetricsReporter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, "android.window.ITransitionMetricsReporter"

    return-object v0
.end method

.method public blacklist reportAnimationStart(Landroid/os/IBinder;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Landroid/window/ITransitionMetricsReporter$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 133
    :try_start_8
    const-string v1, "android.window.ITransitionMetricsReporter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 135
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object p1, p0, Landroid/window/ITransitionMetricsReporter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p1, p3, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw p1
.end method
