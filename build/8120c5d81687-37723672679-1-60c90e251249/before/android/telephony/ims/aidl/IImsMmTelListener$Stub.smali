.class public abstract Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;
.super Landroid/os/Binder;
.source "IImsMmTelListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsMmTelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsMmTelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsMmTelListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAudioModeIsVoipChanged:I = 0x4

.field static final blacklist TRANSACTION_onIncomingCall:I = 0x1

.field static final blacklist TRANSACTION_onMediaQualityStatusChanged:I = 0x9

.field static final blacklist TRANSACTION_onModifyImsTrafficSession:I = 0x7

.field static final blacklist TRANSACTION_onRejectedCall:I = 0x2

.field static final blacklist TRANSACTION_onStartImsTrafficSession:I = 0x6

.field static final blacklist TRANSACTION_onStopImsTrafficSession:I = 0x8

.field static final blacklist TRANSACTION_onTriggerEpsFallback:I = 0x5

.field static final blacklist TRANSACTION_onVoiceMessageCountUpdate:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.telephony.ims.aidl.IImsMmTelListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelListener;
    .registers 3

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsMmTelListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsMmTelListener;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroid/telephony/ims/aidl/IImsMmTelListener;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 86
    packed-switch p0, :pswitch_data_2a

    .line 126
    const/4 p0, 0x0

    return-object p0

    .line 122
    :pswitch_5
    const-string/jumbo p0, "onMediaQualityStatusChanged"

    return-object p0

    .line 118
    :pswitch_9
    const-string/jumbo p0, "onStopImsTrafficSession"

    return-object p0

    .line 114
    :pswitch_d
    const-string/jumbo p0, "onModifyImsTrafficSession"

    return-object p0

    .line 110
    :pswitch_11
    const-string/jumbo p0, "onStartImsTrafficSession"

    return-object p0

    .line 106
    :pswitch_15
    const-string/jumbo p0, "onTriggerEpsFallback"

    return-object p0

    .line 102
    :pswitch_19
    const-string/jumbo p0, "onAudioModeIsVoipChanged"

    return-object p0

    .line 98
    :pswitch_1d
    const-string/jumbo p0, "onVoiceMessageCountUpdate"

    return-object p0

    .line 94
    :pswitch_21
    const-string/jumbo p0, "onRejectedCall"

    return-object p0

    .line 90
    :pswitch_25
    const-string/jumbo p0, "onIncomingCall"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 398
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 133
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    nop

    .line 138
    const-string v0, "android.telephony.ims.aidl.IImsMmTelListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_17
    packed-switch p1, :pswitch_data_d0

    .line 240
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 233
    :pswitch_20
    sget-object p1, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/MediaQualityStatus;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    .line 236
    goto/16 :goto_ce

    .line 225
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onStopImsTrafficSession(I)V

    .line 228
    goto/16 :goto_ce

    .line 215
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onModifyImsTrafficSession(II)V

    .line 220
    goto/16 :goto_ce

    .line 199
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsTrafficSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

    move-result-object v7

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V

    .line 210
    goto :goto_ce

    .line 191
    :pswitch_6c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onTriggerEpsFallback(I)V

    .line 194
    goto :goto_ce

    .line 183
    :pswitch_78
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onAudioModeIsVoipChanged(I)V

    .line 186
    goto :goto_ce

    .line 175
    :pswitch_84
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onVoiceMessageCountUpdate(I)V

    .line 178
    goto :goto_ce

    .line 164
    :pswitch_90
    move-object v2, p0

    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 166
    sget-object p4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/ImsReasonInfo;

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1, p4}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_ce

    .line 150
    :pswitch_ab
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 154
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1, p4, v0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 159
    nop

    .line 243
    :goto_ce
    return v1

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_6c
        :pswitch_4c
        :pswitch_3c
        :pswitch_30
        :pswitch_20
    .end packed-switch
.end method
