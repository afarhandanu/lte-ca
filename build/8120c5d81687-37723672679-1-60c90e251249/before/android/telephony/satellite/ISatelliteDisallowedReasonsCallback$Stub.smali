.class public abstract Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;
.super Landroid/os/Binder;
.source "ISatelliteDisallowedReasonsCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSatelliteDisallowedReasonsChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.telephony.satellite.ISatelliteDisallowedReasonsCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    .registers 3

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_4
    const-string v0, "android.telephony.satellite.ISatelliteDisallowedReasonsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    if-eqz v1, :cond_13

    .line 52
    check-cast v0, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    return-object v0

    .line 54
    :cond_13
    new-instance v0, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 63
    packed-switch p0, :pswitch_data_a

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 67
    :pswitch_5
    const-string/jumbo p0, "onSatelliteDisallowedReasonsChanged"

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

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 78
    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 82
    nop

    .line 83
    const-string v0, "android.telephony.satellite.ISatelliteDisallowedReasonsCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 90
    :cond_17
    packed-switch p1, :pswitch_data_2c

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 95
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->onSatelliteDisallowedReasonsChanged([I)V

    .line 98
    nop

    .line 105
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
