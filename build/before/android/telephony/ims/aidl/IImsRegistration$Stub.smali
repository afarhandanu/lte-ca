.class public abstract Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.super Landroid/os/Binder;
.source "IImsRegistration.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addEmergencyRegistrationCallback:I = 0x4

.field static final blacklist TRANSACTION_addRegistrationCallback:I = 0x2

.field static final blacklist TRANSACTION_getRegistrationTechnology:I = 0x1

.field static final blacklist TRANSACTION_removeEmergencyRegistrationCallback:I = 0x5

.field static final blacklist TRANSACTION_removeRegistrationCallback:I = 0x3

.field static final blacklist TRANSACTION_triggerDeregistration:I = 0x9

.field static final blacklist TRANSACTION_triggerFullNetworkRegistration:I = 0x6

.field static final blacklist TRANSACTION_triggerSipDelegateDeregistration:I = 0x8

.field static final blacklist TRANSACTION_triggerUpdateSipDelegateRegistration:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 3

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRegistration;

    if-eqz v1, :cond_13

    .line 73
    check-cast v0, Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0

    .line 75
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 84
    packed-switch p0, :pswitch_data_26

    .line 124
    const/4 p0, 0x0

    return-object p0

    .line 120
    :pswitch_5
    const-string/jumbo p0, "triggerDeregistration"

    return-object p0

    .line 116
    :pswitch_9
    const-string/jumbo p0, "triggerSipDelegateDeregistration"

    return-object p0

    .line 112
    :pswitch_d
    const-string/jumbo p0, "triggerUpdateSipDelegateRegistration"

    return-object p0

    .line 108
    :pswitch_11
    const-string/jumbo p0, "triggerFullNetworkRegistration"

    return-object p0

    .line 104
    :pswitch_15
    const-string/jumbo p0, "removeEmergencyRegistrationCallback"

    return-object p0

    .line 100
    :pswitch_19
    const-string p0, "addEmergencyRegistrationCallback"

    return-object p0

    .line 96
    :pswitch_1c
    const-string/jumbo p0, "removeRegistrationCallback"

    return-object p0

    .line 92
    :pswitch_20
    const-string p0, "addRegistrationCallback"

    return-object p0

    .line 88
    :pswitch_23
    const-string p0, "getRegistrationTechnology"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_19
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

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 359
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 131
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 135
    nop

    .line 136
    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v1

    .line 143
    :cond_17
    packed-switch p1, :pswitch_data_8a

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 207
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerDeregistration(I)V

    .line 210
    goto :goto_88

    .line 201
    :pswitch_2a
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerSipDelegateDeregistration()V

    .line 202
    goto :goto_88

    .line 196
    :pswitch_2e
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerUpdateSipDelegateRegistration()V

    .line 197
    goto :goto_88

    .line 187
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerFullNetworkRegistration(ILjava/lang/String;)V

    .line 192
    goto :goto_88

    .line 179
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 182
    goto :goto_88

    .line 171
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 174
    goto :goto_88

    .line 163
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 166
    goto :goto_88

    .line 155
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 158
    goto :goto_88

    .line 147
    :pswitch_7d
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->getRegistrationTechnology()I

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    nop

    .line 217
    :goto_88
    return v1

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_6e
        :pswitch_5f
        :pswitch_50
        :pswitch_41
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
