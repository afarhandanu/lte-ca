.class public abstract Landroid/telephony/mbms/IDownloadStatusListener$Stub;
.super Landroid/os/Binder;
.source "IDownloadStatusListener.java"

# interfaces
.implements Landroid/telephony/mbms/IDownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IDownloadStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IDownloadStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.IDownloadStatusListener"

.field static final greylist-max-o TRANSACTION_onStatusUpdated:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.telephony.mbms.IDownloadStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStatusListener;
    .registers 3

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "android.telephony.mbms.IDownloadStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/mbms/IDownloadStatusListener;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Landroid/telephony/mbms/IDownloadStatusListener;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Landroid/telephony/mbms/IDownloadStatusListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/mbms/IDownloadStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 58
    packed-switch p0, :pswitch_data_a

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 62
    :pswitch_5
    const-string/jumbo p0, "onStatusUpdated"

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

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {p1}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 77
    nop

    .line 78
    const-string v0, "android.telephony.mbms.IDownloadStatusListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 85
    :cond_17
    packed-switch p1, :pswitch_data_3e

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 90
    :pswitch_1f
    sget-object p1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/mbms/DownloadRequest;

    .line 92
    sget-object p4, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/mbms/FileInfo;

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, p1, p4, v0}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    nop

    .line 105
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
