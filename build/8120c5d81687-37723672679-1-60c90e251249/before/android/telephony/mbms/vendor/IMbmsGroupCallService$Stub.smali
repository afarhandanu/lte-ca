.class public abstract Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;
.super Landroid/os/Binder;
.source "IMbmsGroupCallService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsGroupCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dispose:I = 0x5

.field static final blacklist TRANSACTION_initialize:I = 0x1

.field static final blacklist TRANSACTION_startGroupCall:I = 0x4

.field static final blacklist TRANSACTION_stopGroupCall:I = 0x2

.field static final blacklist TRANSACTION_updateGroupCall:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    .registers 3

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 69
    packed-switch p0, :pswitch_data_18

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 89
    :pswitch_5
    const-string p0, "dispose"

    return-object p0

    .line 85
    :pswitch_8
    const-string/jumbo p0, "startGroupCall"

    return-object p0

    .line 81
    :pswitch_c
    const-string/jumbo p0, "updateGroupCall"

    return-object p0

    .line 77
    :pswitch_10
    const-string/jumbo p0, "stopGroupCall"

    return-object p0

    .line 73
    :pswitch_14
    const-string p0, "initialize"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 302
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 100
    invoke-static {p1}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    nop

    .line 105
    const-string v0, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 112
    :cond_17
    packed-switch p1, :pswitch_data_b0

    .line 183
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->dispose(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto/16 :goto_af

    .line 156
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 161
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 163
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/mbms/IGroupCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IGroupCallCallback;

    move-result-object v8

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    goto :goto_af

    .line 140
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 145
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 147
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_af

    .line 129
    :pswitch_81
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, p1, v3, v4}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->stopGroupCall(IJ)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_af

    .line 117
    :pswitch_94
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1, p4}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I

    move-result p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    nop

    .line 186
    :goto_af
    return v1

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_94
        :pswitch_81
        :pswitch_5e
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method
