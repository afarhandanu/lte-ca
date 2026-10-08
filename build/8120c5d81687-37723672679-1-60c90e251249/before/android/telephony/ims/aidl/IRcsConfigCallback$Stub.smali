.class public abstract Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;
.super Landroid/os/Binder;
.source "IRcsConfigCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IRcsConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IRcsConfigCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAutoConfigurationErrorReceived:I = 0x2

.field static final blacklist TRANSACTION_onConfigurationChanged:I = 0x1

.field static final blacklist TRANSACTION_onConfigurationReset:I = 0x3

.field static final blacklist TRANSACTION_onPreProvisioningReceived:I = 0x5

.field static final blacklist TRANSACTION_onRemoved:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_1a

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 90
    :pswitch_5
    const-string/jumbo p0, "onPreProvisioningReceived"

    return-object p0

    .line 86
    :pswitch_9
    const-string/jumbo p0, "onRemoved"

    return-object p0

    .line 82
    :pswitch_d
    const-string/jumbo p0, "onConfigurationReset"

    return-object p0

    .line 78
    :pswitch_11
    const-string/jumbo p0, "onAutoConfigurationErrorReceived"

    return-object p0

    .line 74
    :pswitch_15
    const-string/jumbo p0, "onConfigurationChanged"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 241
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 101
    invoke-static {p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    nop

    .line 106
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_17
    packed-switch p1, :pswitch_data_4e

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 146
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onPreProvisioningReceived([B)V

    .line 149
    goto :goto_4c

    .line 140
    :pswitch_2a
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onRemoved()V

    .line 141
    goto :goto_4c

    .line 135
    :pswitch_2e
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onConfigurationReset()V

    .line 136
    goto :goto_4c

    .line 126
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V

    .line 131
    goto :goto_4c

    .line 118
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onConfigurationChanged([B)V

    .line 121
    nop

    .line 156
    :goto_4c
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
