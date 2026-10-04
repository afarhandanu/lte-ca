.class public abstract Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;
.super Landroid/os/Binder;
.source "IImsMmTelFeature.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsMmTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeSms:I = 0x1a

.field static final blacklist TRANSACTION_acknowledgeSmsReport:I = 0x1c

.field static final blacklist TRANSACTION_acknowledgeSmsWithPdu:I = 0x1b

.field static final blacklist TRANSACTION_addCapabilityCallback:I = 0xd

.field static final blacklist TRANSACTION_changeCapabilitiesConfiguration:I = 0xf

.field static final blacklist TRANSACTION_changeOfferedRtpHeaderExtensionTypes:I = 0x4

.field static final blacklist TRANSACTION_createCallProfile:I = 0x3

.field static final blacklist TRANSACTION_createCallSession:I = 0x5

.field static final blacklist TRANSACTION_getEcbmInterface:I = 0x8

.field static final blacklist TRANSACTION_getFeatureState:I = 0x2

.field static final blacklist TRANSACTION_getMultiEndpointInterface:I = 0xa

.field static final blacklist TRANSACTION_getSmsFormat:I = 0x1d

.field static final blacklist TRANSACTION_getUtInterface:I = 0x7

.field static final blacklist TRANSACTION_notifySrvccCanceled:I = 0x14

.field static final blacklist TRANSACTION_notifySrvccCompleted:I = 0x12

.field static final blacklist TRANSACTION_notifySrvccFailed:I = 0x13

.field static final blacklist TRANSACTION_notifySrvccStarted:I = 0x11

.field static final blacklist TRANSACTION_onMemoryAvailable:I = 0x19

.field static final blacklist TRANSACTION_onSmsReady:I = 0x1e

.field static final blacklist TRANSACTION_queryCapabilityConfiguration:I = 0x10

.field static final blacklist TRANSACTION_queryCapabilityStatus:I = 0xb

.field static final blacklist TRANSACTION_queryMediaQualityStatus:I = 0x16

.field static final blacklist TRANSACTION_removeCapabilityCallback:I = 0xe

.field static final blacklist TRANSACTION_sendSms:I = 0x18

.field static final blacklist TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setMediaQualityThreshold:I = 0x15

.field static final blacklist TRANSACTION_setSmsListener:I = 0x17

.field static final blacklist TRANSACTION_setTerminalBasedCallWaitingStatus:I = 0xc

.field static final blacklist TRANSACTION_setUiTtyMode:I = 0x9

.field static final blacklist TRANSACTION_shouldProcessCall:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 132
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3

    .line 140
    if-nez p0, :cond_4

    .line 141
    const/4 p0, 0x0

    return-object p0

    .line 143
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    if-eqz v1, :cond_13

    .line 145
    check-cast v0, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v0

    .line 147
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 156
    packed-switch p0, :pswitch_data_70

    .line 280
    const/4 p0, 0x0

    return-object p0

    .line 276
    :pswitch_5
    const-string/jumbo p0, "onSmsReady"

    return-object p0

    .line 272
    :pswitch_9
    const-string p0, "getSmsFormat"

    return-object p0

    .line 268
    :pswitch_c
    const-string p0, "acknowledgeSmsReport"

    return-object p0

    .line 264
    :pswitch_f
    const-string p0, "acknowledgeSmsWithPdu"

    return-object p0

    .line 260
    :pswitch_12
    const-string p0, "acknowledgeSms"

    return-object p0

    .line 256
    :pswitch_15
    const-string/jumbo p0, "onMemoryAvailable"

    return-object p0

    .line 252
    :pswitch_19
    const-string/jumbo p0, "sendSms"

    return-object p0

    .line 248
    :pswitch_1d
    const-string/jumbo p0, "setSmsListener"

    return-object p0

    .line 244
    :pswitch_21
    const-string/jumbo p0, "queryMediaQualityStatus"

    return-object p0

    .line 240
    :pswitch_25
    const-string/jumbo p0, "setMediaQualityThreshold"

    return-object p0

    .line 236
    :pswitch_29
    const-string/jumbo p0, "notifySrvccCanceled"

    return-object p0

    .line 232
    :pswitch_2d
    const-string/jumbo p0, "notifySrvccFailed"

    return-object p0

    .line 228
    :pswitch_31
    const-string/jumbo p0, "notifySrvccCompleted"

    return-object p0

    .line 224
    :pswitch_35
    const-string/jumbo p0, "notifySrvccStarted"

    return-object p0

    .line 220
    :pswitch_39
    const-string/jumbo p0, "queryCapabilityConfiguration"

    return-object p0

    .line 216
    :pswitch_3d
    const-string p0, "changeCapabilitiesConfiguration"

    return-object p0

    .line 212
    :pswitch_40
    const-string/jumbo p0, "removeCapabilityCallback"

    return-object p0

    .line 208
    :pswitch_44
    const-string p0, "addCapabilityCallback"

    return-object p0

    .line 204
    :pswitch_47
    const-string/jumbo p0, "setTerminalBasedCallWaitingStatus"

    return-object p0

    .line 200
    :pswitch_4b
    const-string/jumbo p0, "queryCapabilityStatus"

    return-object p0

    .line 196
    :pswitch_4f
    const-string p0, "getMultiEndpointInterface"

    return-object p0

    .line 192
    :pswitch_52
    const-string/jumbo p0, "setUiTtyMode"

    return-object p0

    .line 188
    :pswitch_56
    const-string p0, "getEcbmInterface"

    return-object p0

    .line 184
    :pswitch_59
    const-string p0, "getUtInterface"

    return-object p0

    .line 180
    :pswitch_5c
    const-string/jumbo p0, "shouldProcessCall"

    return-object p0

    .line 176
    :pswitch_60
    const-string p0, "createCallSession"

    return-object p0

    .line 172
    :pswitch_63
    const-string p0, "changeOfferedRtpHeaderExtensionTypes"

    return-object p0

    .line 168
    :pswitch_66
    const-string p0, "createCallProfile"

    return-object p0

    .line 164
    :pswitch_69
    const-string p0, "getFeatureState"

    return-object p0

    .line 160
    :pswitch_6c
    const-string/jumbo p0, "setListener"

    return-object p0

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 151
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1072
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 287
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 291
    nop

    .line 292
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 293
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 296
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    return v1

    .line 299
    :cond_17
    packed-switch p1, :pswitch_data_220

    .line 574
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 569
    :pswitch_20
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->onSmsReady()V

    .line 570
    goto/16 :goto_21f

    .line 562
    :pswitch_25
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    goto/16 :goto_21f

    .line 551
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSmsReport(III)V

    .line 558
    goto/16 :goto_21f

    .line 537
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSmsWithPdu(III[B)V

    .line 546
    goto/16 :goto_21f

    .line 525
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSms(III)V

    .line 532
    goto/16 :goto_21f

    .line 517
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->onMemoryAvailable(I)V

    .line 520
    goto/16 :goto_21f

    .line 499
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 512
    goto/16 :goto_21f

    .line 490
    :pswitch_9e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object p1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_21f

    .line 480
    :pswitch_b2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object p1

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 485
    goto/16 :goto_21f

    .line 470
    :pswitch_c6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 472
    sget-object p3, Landroid/telephony/ims/MediaThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/MediaThreshold;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setMediaQualityThreshold(ILandroid/telephony/ims/MediaThreshold;)V

    .line 475
    goto/16 :goto_21f

    .line 464
    :pswitch_db
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccCanceled()V

    .line 465
    goto/16 :goto_21f

    .line 459
    :pswitch_e1
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccFailed()V

    .line 460
    goto/16 :goto_21f

    .line 454
    :pswitch_e7
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccCompleted()V

    .line 455
    goto/16 :goto_21f

    .line 447
    :pswitch_ed
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/ISrvccStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISrvccStartedCallback;

    move-result-object p1

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    .line 450
    goto/16 :goto_21f

    .line 435
    :pswitch_fe
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p4

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 442
    goto/16 :goto_21f

    .line 425
    :pswitch_117
    move-object v2, p0

    sget-object p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p3

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 430
    goto/16 :goto_21f

    .line 417
    :pswitch_130
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 420
    goto/16 :goto_21f

    .line 409
    :pswitch_141
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p1

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 412
    goto/16 :goto_21f

    .line 400
    :pswitch_152
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setTerminalBasedCallWaitingStatus(Z)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto/16 :goto_21f

    .line 392
    :pswitch_162
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityStatus()I

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_21f

    .line 385
    :pswitch_16f
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 388
    goto/16 :goto_21f

    .line 375
    :pswitch_17c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 377
    sget-object p4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Message;

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, p1, p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setUiTtyMode(ILandroid/os/Message;)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_21f

    .line 367
    :pswitch_194
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 370
    goto/16 :goto_21f

    .line 360
    :pswitch_1a1
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object p1

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 363
    goto/16 :goto_21f

    .line 351
    :pswitch_1ae
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->shouldProcessCall([Ljava/lang/String;)I

    move-result p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto :goto_21f

    .line 341
    :pswitch_1c1
    move-object v2, p0

    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 346
    goto :goto_21f

    .line 332
    :pswitch_1d8
    move-object v2, p0

    sget-object p1, Landroid/telephony/ims/RtpHeaderExtensionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto :goto_21f

    .line 320
    :pswitch_1e9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, p1, p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 327
    goto :goto_21f

    .line 312
    :pswitch_200
    move-object v2, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getFeatureState()I

    move-result p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    goto :goto_21f

    .line 304
    :pswitch_20c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    nop

    .line 577
    :goto_21f
    return v1

    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_20c
        :pswitch_200
        :pswitch_1e9
        :pswitch_1d8
        :pswitch_1c1
        :pswitch_1ae
        :pswitch_1a1
        :pswitch_194
        :pswitch_17c
        :pswitch_16f
        :pswitch_162
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_117
        :pswitch_fe
        :pswitch_ed
        :pswitch_e7
        :pswitch_e1
        :pswitch_db
        :pswitch_c6
        :pswitch_b2
        :pswitch_9e
        :pswitch_7d
        :pswitch_71
        :pswitch_5d
        :pswitch_45
        :pswitch_31
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method
