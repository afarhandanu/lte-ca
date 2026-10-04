.class public abstract Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;
.super Landroid/os/Binder;
.source "ISatelliteGateway.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatelliteGateway;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatelliteGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatelliteGateway$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.telephony.satellite.stub.ISatelliteGateway"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteGateway;
    .registers 3

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_4
    const-string v0, "android.telephony.satellite.stub.ISatelliteGateway"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatelliteGateway;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Landroid/telephony/satellite/stub/ISatelliteGateway;

    return-object v0

    .line 43
    :cond_13
    new-instance v0, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 52
    nop

    .line 56
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 63
    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    nop

    .line 68
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_d

    .line 69
    const-string p1, "android.telephony.satellite.stub.ISatelliteGateway"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 p1, 0x1

    return p1

    .line 72
    :cond_d
    nop

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method
