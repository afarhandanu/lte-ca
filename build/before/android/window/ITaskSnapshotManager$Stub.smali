.class public abstract Landroid/window/ITaskSnapshotManager$Stub;
.super Landroid/os/Binder;
.source "ITaskSnapshotManager.java"

# interfaces
.implements Landroid/window/ITaskSnapshotManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskSnapshotManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x1

.field static final blacklist TRANSACTION_registerTaskSnapshotListener:I = 0x3

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x2

.field static final blacklist TRANSACTION_unregisterTaskSnapshotListener:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.window.ITaskSnapshotManager"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskSnapshotManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskSnapshotManager;
    .registers 3

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_4
    const-string v0, "android.window.ITaskSnapshotManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/ITaskSnapshotManager;

    if-eqz v1, :cond_13

    .line 81
    check-cast v0, Landroid/window/ITaskSnapshotManager;

    return-object v0

    .line 83
    :cond_13
    new-instance v0, Landroid/window/ITaskSnapshotManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/ITaskSnapshotManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 92
    packed-switch p0, :pswitch_data_14

    .line 112
    const/4 p0, 0x0

    return-object p0

    .line 108
    :pswitch_5
    const-string/jumbo p0, "unregisterTaskSnapshotListener"

    return-object p0

    .line 104
    :pswitch_9
    const-string/jumbo p0, "registerTaskSnapshotListener"

    return-object p0

    .line 100
    :pswitch_d
    const-string/jumbo p0, "takeTaskSnapshot"

    return-object p0

    .line 96
    :pswitch_11
    const-string p0, "getTaskSnapshot"

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

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 305
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {p1}, Landroid/window/ITaskSnapshotManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    nop

    .line 124
    const-string v0, "android.window.ITaskSnapshotManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_17
    packed-switch p1, :pswitch_data_78

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITaskSnapshotListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskSnapshotListener;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1}, Landroid/window/ITaskSnapshotManager$Stub;->unregisterTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_77

    .line 164
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITaskSnapshotListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskSnapshotListener;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1}, Landroid/window/ITaskSnapshotManager$Stub;->registerTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_77

    .line 150
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1, p4, v0}, Landroid/window/ITaskSnapshotManager$Stub;->takeTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    move-result-object p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 159
    goto :goto_77

    .line 136
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, v2, v3, p4}, Landroid/window/ITaskSnapshotManager$Stub;->getTaskSnapshot(IJI)Landroid/window/TaskSnapshot;

    move-result-object p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    nop

    .line 184
    :goto_77
    return v1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
