.class public abstract Landroid/telephony/ims/aidl/IImsRcsController$Stub;
.super Landroid/os/Binder;
.source "IImsRcsController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRcsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRcsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSipDelegate:I = 0x11

.field static final blacklist TRANSACTION_destroySipDelegate:I = 0x12

.field static final blacklist TRANSACTION_getImsRcsRegistrationState:I = 0x3

.field static final blacklist TRANSACTION_getImsRcsRegistrationTransportType:I = 0x4

.field static final blacklist TRANSACTION_getUcePublishState:I = 0xb

.field static final blacklist TRANSACTION_isAvailable:I = 0x8

.field static final blacklist TRANSACTION_isCapable:I = 0x7

.field static final blacklist TRANSACTION_isSipDelegateSupported:I = 0x10

.field static final blacklist TRANSACTION_isUceSettingEnabled:I = 0xc

.field static final blacklist TRANSACTION_registerImsRegistrationCallback:I = 0x1

.field static final blacklist TRANSACTION_registerRcsAvailabilityCallback:I = 0x5

.field static final blacklist TRANSACTION_registerRcsFeatureCallback:I = 0x16

.field static final blacklist TRANSACTION_registerSipDialogStateCallback:I = 0x14

.field static final blacklist TRANSACTION_registerUcePublishStateCallback:I = 0xe

.field static final blacklist TRANSACTION_requestAvailability:I = 0xa

.field static final blacklist TRANSACTION_requestCapabilities:I = 0x9

.field static final blacklist TRANSACTION_setUceSettingEnabled:I = 0xd

.field static final blacklist TRANSACTION_triggerNetworkRegistration:I = 0x13

.field static final blacklist TRANSACTION_unregisterImsFeatureCallback:I = 0x17

.field static final blacklist TRANSACTION_unregisterImsRegistrationCallback:I = 0x2

.field static final blacklist TRANSACTION_unregisterRcsAvailabilityCallback:I = 0x6

.field static final blacklist TRANSACTION_unregisterSipDialogStateCallback:I = 0x15

.field static final blacklist TRANSACTION_unregisterUcePublishStateCallback:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.telephony.ims.aidl.IImsRcsController"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 3

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRcsController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRcsController;

    if-eqz v1, :cond_13

    .line 124
    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    return-object v0

    .line 126
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 135
    packed-switch p0, :pswitch_data_58

    .line 231
    const/4 p0, 0x0

    return-object p0

    .line 227
    :pswitch_5
    const-string/jumbo p0, "unregisterImsFeatureCallback"

    return-object p0

    .line 223
    :pswitch_9
    const-string/jumbo p0, "registerRcsFeatureCallback"

    return-object p0

    .line 219
    :pswitch_d
    const-string/jumbo p0, "unregisterSipDialogStateCallback"

    return-object p0

    .line 215
    :pswitch_11
    const-string/jumbo p0, "registerSipDialogStateCallback"

    return-object p0

    .line 211
    :pswitch_15
    const-string/jumbo p0, "triggerNetworkRegistration"

    return-object p0

    .line 207
    :pswitch_19
    const-string p0, "destroySipDelegate"

    return-object p0

    .line 203
    :pswitch_1c
    const-string p0, "createSipDelegate"

    return-object p0

    .line 199
    :pswitch_1f
    const-string p0, "isSipDelegateSupported"

    return-object p0

    .line 195
    :pswitch_22
    const-string/jumbo p0, "unregisterUcePublishStateCallback"

    return-object p0

    .line 191
    :pswitch_26
    const-string/jumbo p0, "registerUcePublishStateCallback"

    return-object p0

    .line 187
    :pswitch_2a
    const-string/jumbo p0, "setUceSettingEnabled"

    return-object p0

    .line 183
    :pswitch_2e
    const-string p0, "isUceSettingEnabled"

    return-object p0

    .line 179
    :pswitch_31
    const-string p0, "getUcePublishState"

    return-object p0

    .line 175
    :pswitch_34
    const-string/jumbo p0, "requestAvailability"

    return-object p0

    .line 171
    :pswitch_38
    const-string/jumbo p0, "requestCapabilities"

    return-object p0

    .line 167
    :pswitch_3c
    const-string p0, "isAvailable"

    return-object p0

    .line 163
    :pswitch_3f
    const-string p0, "isCapable"

    return-object p0

    .line 159
    :pswitch_42
    const-string/jumbo p0, "unregisterRcsAvailabilityCallback"

    return-object p0

    .line 155
    :pswitch_46
    const-string/jumbo p0, "registerRcsAvailabilityCallback"

    return-object p0

    .line 151
    :pswitch_4a
    const-string p0, "getImsRcsRegistrationTransportType"

    return-object p0

    .line 147
    :pswitch_4d
    const-string p0, "getImsRcsRegistrationState"

    return-object p0

    .line 143
    :pswitch_50
    const-string/jumbo p0, "unregisterImsRegistrationCallback"

    return-object p0

    .line 139
    :pswitch_54
    const-string/jumbo p0, "registerImsRegistrationCallback"

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
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

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 983
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 238
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 242
    nop

    .line 243
    const-string v3, "android.telephony.ims.aidl.IImsRcsController"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 244
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 247
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return v6

    .line 250
    :cond_17
    packed-switch p1, :pswitch_data_26e

    .line 536
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 528
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v1

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto/16 :goto_26d

    .line 517
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v3

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerRcsFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    goto/16 :goto_26d

    .line 506
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISipDialogStateCallback;

    move-result-object v3

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_26d

    .line 495
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISipDialogStateCallback;

    move-result-object v3

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    goto/16 :goto_26d

    .line 480
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_26d

    .line 467
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v1, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto/16 :goto_26d

    .line 450
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    sget-object v3, Landroid/telephony/ims/DelegateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/DelegateRequest;

    .line 454
    move-object v2, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v5

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v7

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    move-object v0, p0

    move-object v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_26d

    .line 440
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isSipDelegateSupported(I)Z

    move-result v0

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 445
    goto/16 :goto_26d

    .line 429
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v2

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_26d

    .line 418
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v2

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_26d

    .line 407
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->setUceSettingEnabled(IZ)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_26d

    .line 393
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 402
    goto/16 :goto_26d

    .line 383
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getUcePublishState(I)I

    move-result v0

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    goto/16 :goto_26d

    .line 366
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 372
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v7

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    move-object v0, p0

    move-object v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_26d

    .line 349
    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v5

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_26d

    .line 335
    :pswitch_1b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isAvailable(III)Z

    move-result v0

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    goto/16 :goto_26d

    .line 321
    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isCapable(III)Z

    move-result v0

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 330
    goto/16 :goto_26d

    .line 310
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto :goto_26d

    .line 299
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto :goto_26d

    .line 288
    :pswitch_215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto :goto_26d

    .line 277
    :pswitch_22b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto :goto_26d

    .line 266
    :pswitch_241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_26d

    .line 255
    :pswitch_257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    nop

    .line 539
    :goto_26d
    return v6

    :pswitch_data_26e
    .packed-switch 0x1
        :pswitch_257
        :pswitch_241
        :pswitch_22b
        :pswitch_215
        :pswitch_1ff
        :pswitch_1e9
        :pswitch_1ce
        :pswitch_1b3
        :pswitch_18c
        :pswitch_162
        :pswitch_14f
        :pswitch_134
        :pswitch_121
        :pswitch_10a
        :pswitch_f3
        :pswitch_e0
        :pswitch_b1
        :pswitch_96
        :pswitch_77
        :pswitch_60
        :pswitch_49
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
