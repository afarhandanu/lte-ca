.class Landroid/telephony/CellIdentity$1;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellIdentity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;
    .registers 3

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    packed-switch v0, :pswitch_data_2e

    .line 319
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad Cell identity Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :pswitch_f
    invoke-static {p1}, Landroid/telephony/CellIdentityNr;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;

    move-result-object p1

    return-object p1

    .line 317
    :pswitch_14
    invoke-static {p1}, Landroid/telephony/CellIdentityTdscdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p1

    return-object p1

    .line 313
    :pswitch_19
    invoke-static {p1}, Landroid/telephony/CellIdentityWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p1

    return-object p1

    .line 315
    :pswitch_1e
    invoke-static {p1}, Landroid/telephony/CellIdentityLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;

    move-result-object p1

    return-object p1

    .line 314
    :pswitch_23
    invoke-static {p1}, Landroid/telephony/CellIdentityCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;

    move-result-object p1

    return-object p1

    .line 312
    :pswitch_28
    invoke-static {p1}, Landroid/telephony/CellIdentityGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CellIdentity;
    .registers 2

    .line 325
    new-array p1, p1, [Landroid/telephony/CellIdentity;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->newArray(I)[Landroid/telephony/CellIdentity;

    move-result-object p1

    return-object p1
.end method
