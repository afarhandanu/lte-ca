.class public abstract Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;
.super Landroid/os/Binder;
.source "IDataShareWriteAdapter.java"

# interfaces
.implements Landroid/view/contentcapture/IDataShareWriteAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IDataShareWriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_error:I = 0x2

.field static final blacklist TRANSACTION_finish:I = 0x4

.field static final blacklist TRANSACTION_rejected:I = 0x3

.field static final blacklist TRANSACTION_write:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IDataShareWriteAdapter;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/contentcapture/IDataShareWriteAdapter;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Landroid/view/contentcapture/IDataShareWriteAdapter;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_14

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string p0, "finish"

    return-object p0

    .line 76
    :pswitch_8
    const-string/jumbo p0, "rejected"

    return-object p0

    .line 72
    :pswitch_c
    const-string p0, "error"

    return-object p0

    .line 68
    :pswitch_f
    const-string/jumbo p0, "write"

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 207
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

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
    packed-switch p1, :pswitch_data_42

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 128
    :pswitch_1f
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->finish()V

    .line 129
    goto :goto_41

    .line 123
    :pswitch_23
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->rejected()V

    .line 124
    goto :goto_41

    .line 116
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->error(I)V

    .line 119
    goto :goto_41

    .line 108
    :pswitch_32
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->write(Landroid/os/ParcelFileDescriptor;)V

    .line 111
    nop

    .line 136
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_32
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
