.class public abstract Landroid/view/autofill/IAutoFillManager$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManager.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManager"

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_autofillRemoteApp:I = 0x1e

.field static final greylist-max-o TRANSACTION_cancelSession:I = 0xa

.field static final greylist-max-o TRANSACTION_disableOwnedAutofillServices:I = 0xd

.field static final greylist-max-o TRANSACTION_finishSession:I = 0x9

.field static final greylist-max-o TRANSACTION_getAutofillServiceComponentName:I = 0x15

.field static final greylist-max-o TRANSACTION_getAvailableFieldClassificationAlgorithms:I = 0x16

.field static final greylist-max-o TRANSACTION_getDefaultFieldClassificationAlgorithm:I = 0x17

.field static final greylist-max-o TRANSACTION_getFillEventHistory:I = 0x4

.field static final greylist-max-o TRANSACTION_getUserData:I = 0x11

.field static final greylist-max-o TRANSACTION_getUserDataId:I = 0x12

.field static final greylist-max-o TRANSACTION_isFieldClassificationEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_isServiceEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_isServiceSupported:I = 0xe

.field static final blacklist TRANSACTION_notifyImeAnimationEnd:I = 0x1d

.field static final blacklist TRANSACTION_notifyImeAnimationStart:I = 0x1c

.field static final blacklist TRANSACTION_notifyNotExpiringResponseDuringAuth:I = 0x19

.field static final blacklist TRANSACTION_notifyViewEnteredIgnoredDuringAuthCount:I = 0x1a

.field static final greylist-max-o TRANSACTION_onPendingSaveUi:I = 0x10

.field static final greylist-max-o TRANSACTION_removeClient:I = 0x2

.field static final greylist-max-o TRANSACTION_restoreSession:I = 0x5

.field static final blacklist TRANSACTION_setAugmentedAutofillWhitelist:I = 0x18

.field static final greylist-max-o TRANSACTION_setAuthenticationResult:I = 0xb

.field static final greylist-max-o TRANSACTION_setAutofillFailure:I = 0x7

.field static final blacklist TRANSACTION_setAutofillIdsAttemptedForRefill:I = 0x1b

.field static final greylist-max-o TRANSACTION_setHasCallback:I = 0xc

.field static final greylist-max-o TRANSACTION_setUserData:I = 0x13

.field static final blacklist TRANSACTION_setViewAutofilled:I = 0x8

.field static final greylist-max-o TRANSACTION_startSession:I = 0x3

.field static final greylist-max-o TRANSACTION_updateSession:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;
    .registers 3

    .line 132
    if-nez p0, :cond_4

    .line 133
    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_4
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManager;

    if-eqz v1, :cond_13

    .line 137
    check-cast v0, Landroid/view/autofill/IAutoFillManager;

    return-object v0

    .line 139
    :cond_13
    new-instance v0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 148
    packed-switch p0, :pswitch_data_70

    .line 272
    const/4 p0, 0x0

    return-object p0

    .line 268
    :pswitch_5
    const-string p0, "autofillRemoteApp"

    return-object p0

    .line 264
    :pswitch_8
    const-string/jumbo p0, "notifyImeAnimationEnd"

    return-object p0

    .line 260
    :pswitch_c
    const-string/jumbo p0, "notifyImeAnimationStart"

    return-object p0

    .line 256
    :pswitch_10
    const-string/jumbo p0, "setAutofillIdsAttemptedForRefill"

    return-object p0

    .line 252
    :pswitch_14
    const-string/jumbo p0, "notifyViewEnteredIgnoredDuringAuthCount"

    return-object p0

    .line 248
    :pswitch_18
    const-string/jumbo p0, "notifyNotExpiringResponseDuringAuth"

    return-object p0

    .line 244
    :pswitch_1c
    const-string/jumbo p0, "setAugmentedAutofillWhitelist"

    return-object p0

    .line 240
    :pswitch_20
    const-string p0, "getDefaultFieldClassificationAlgorithm"

    return-object p0

    .line 236
    :pswitch_23
    const-string p0, "getAvailableFieldClassificationAlgorithms"

    return-object p0

    .line 232
    :pswitch_26
    const-string p0, "getAutofillServiceComponentName"

    return-object p0

    .line 228
    :pswitch_29
    const-string p0, "isFieldClassificationEnabled"

    return-object p0

    .line 224
    :pswitch_2c
    const-string/jumbo p0, "setUserData"

    return-object p0

    .line 220
    :pswitch_30
    const-string p0, "getUserDataId"

    return-object p0

    .line 216
    :pswitch_33
    const-string p0, "getUserData"

    return-object p0

    .line 212
    :pswitch_36
    const-string/jumbo p0, "onPendingSaveUi"

    return-object p0

    .line 208
    :pswitch_3a
    const-string p0, "isServiceEnabled"

    return-object p0

    .line 204
    :pswitch_3d
    const-string p0, "isServiceSupported"

    return-object p0

    .line 200
    :pswitch_40
    const-string p0, "disableOwnedAutofillServices"

    return-object p0

    .line 196
    :pswitch_43
    const-string/jumbo p0, "setHasCallback"

    return-object p0

    .line 192
    :pswitch_47
    const-string/jumbo p0, "setAuthenticationResult"

    return-object p0

    .line 188
    :pswitch_4b
    const-string p0, "cancelSession"

    return-object p0

    .line 184
    :pswitch_4e
    const-string p0, "finishSession"

    return-object p0

    .line 180
    :pswitch_51
    const-string/jumbo p0, "setViewAutofilled"

    return-object p0

    .line 176
    :pswitch_55
    const-string/jumbo p0, "setAutofillFailure"

    return-object p0

    .line 172
    :pswitch_59
    const-string/jumbo p0, "updateSession"

    return-object p0

    .line 168
    :pswitch_5d
    const-string/jumbo p0, "restoreSession"

    return-object p0

    .line 164
    :pswitch_61
    const-string p0, "getFillEventHistory"

    return-object p0

    .line 160
    :pswitch_64
    const-string/jumbo p0, "startSession"

    return-object p0

    .line 156
    :pswitch_68
    const-string/jumbo p0, "removeClient"

    return-object p0

    .line 152
    :pswitch_6c
    const-string p0, "addClient"

    return-object p0

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 143
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1118
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 279
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    move-object/from16 v1, p2

    .line 284
    const-string v2, "android.view.autofill.IAutoFillManager"

    const/4 v12, 0x1

    if-lt p1, v12, :cond_f

    const v3, 0xffffff

    if-gt p1, v3, :cond_f

    .line 285
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    :cond_f
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1a

    .line 288
    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    return v12

    .line 291
    :cond_1a
    move-object/from16 v3, p3

    packed-switch p1, :pswitch_data_2f2

    .line 645
    move-object v11, v1

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 630
    :pswitch_25
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 636
    sget-object v4, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    move-object v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/IAutoFillManager$Stub;->autofillRemoteApp(Landroid/os/IBinder;ILandroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V

    .line 641
    goto/16 :goto_2f0

    .line 618
    :pswitch_4b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyImeAnimationEnd(IJI)V

    .line 625
    goto/16 :goto_2f0

    .line 606
    :pswitch_5f
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyImeAnimationStart(IJI)V

    .line 613
    goto/16 :goto_2f0

    .line 594
    :pswitch_73
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->setAutofillIdsAttemptedForRefill(ILjava/util/List;I)V

    .line 601
    goto/16 :goto_2f0

    .line 584
    :pswitch_89
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyViewEnteredIgnoredDuringAuthCount(II)V

    .line 589
    goto/16 :goto_2f0

    .line 574
    :pswitch_99
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyNotExpiringResponseDuringAuth(II)V

    .line 579
    goto/16 :goto_2f0

    .line 562
    :pswitch_a9
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 564
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v4

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V

    .line 569
    goto/16 :goto_2f0

    .line 554
    :pswitch_c3
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V

    .line 557
    goto/16 :goto_2f0

    .line 546
    :pswitch_d3
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V

    .line 549
    goto/16 :goto_2f0

    .line 538
    :pswitch_e3
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 541
    goto/16 :goto_2f0

    .line 530
    :pswitch_f3
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 533
    goto/16 :goto_2f0

    .line 522
    :pswitch_103
    sget-object v2, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/UserData;

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->setUserData(Landroid/service/autofill/UserData;)V

    .line 525
    goto/16 :goto_2f0

    .line 514
    :pswitch_113
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserDataId(Lcom/android/internal/os/IResultReceiver;)V

    .line 517
    goto/16 :goto_2f0

    .line 506
    :pswitch_123
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserData(Lcom/android/internal/os/IResultReceiver;)V

    .line 509
    goto/16 :goto_2f0

    .line 496
    :pswitch_133
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 501
    goto/16 :goto_2f0

    .line 484
    :pswitch_143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v4

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 491
    goto/16 :goto_2f0

    .line 474
    :pswitch_15b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V

    .line 479
    goto/16 :goto_2f0

    .line 466
    :pswitch_16f
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->disableOwnedAutofillServices(I)V

    .line 469
    goto/16 :goto_2f0

    .line 454
    :pswitch_17b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->setHasCallback(IIZ)V

    .line 461
    goto/16 :goto_2f0

    .line 440
    :pswitch_18f
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/autofill/IAutoFillManager$Stub;->setAuthenticationResult(Landroid/os/Bundle;III)V

    .line 449
    goto/16 :goto_2f0

    .line 430
    :pswitch_1ab
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->cancelSession(II)V

    .line 435
    goto/16 :goto_2f0

    .line 418
    :pswitch_1bb
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->finishSession(III)V

    .line 425
    goto/16 :goto_2f0

    .line 406
    :pswitch_1cf
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V

    .line 413
    goto/16 :goto_2f0

    .line 392
    :pswitch_1e7
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 394
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/autofill/IAutoFillManager$Stub;->setAutofillFailure(ILjava/util/List;ZI)V

    .line 401
    goto/16 :goto_2f0

    .line 372
    :pswitch_201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 376
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 378
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 380
    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 384
    move-object/from16 v8, p2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 385
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/view/autofill/IAutoFillManager$Stub;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V

    .line 387
    goto/16 :goto_2f0

    .line 358
    :pswitch_238
    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 362
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 364
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v4

    .line 365
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V

    .line 367
    goto/16 :goto_2f0

    .line 350
    :pswitch_255
    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 351
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V

    .line 353
    goto/16 :goto_2f0

    .line 322
    :pswitch_266
    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 324
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 326
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 328
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 330
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 332
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 334
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 336
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 338
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 340
    move-object v11, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 342
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v13

    .line 343
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    move-object v0, p0

    move-object v11, v13

    invoke-virtual/range {v0 .. v11}, Landroid/view/autofill/IAutoFillManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V

    .line 345
    goto :goto_2f0

    .line 312
    :pswitch_2b3
    move-object v11, v1

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v1

    .line 314
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 317
    goto :goto_2f0

    .line 296
    :pswitch_2c7
    move-object v11, v1

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v1

    .line 298
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 300
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v4

    .line 304
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 305
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/IAutoFillManager$Stub;->addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V

    .line 307
    nop

    .line 648
    :goto_2f0
    return v12

    nop

    :pswitch_data_2f2
    .packed-switch 0x1
        :pswitch_2c7
        :pswitch_2b3
        :pswitch_266
        :pswitch_255
        :pswitch_238
        :pswitch_201
        :pswitch_1e7
        :pswitch_1cf
        :pswitch_1bb
        :pswitch_1ab
        :pswitch_18f
        :pswitch_17b
        :pswitch_16f
        :pswitch_15b
        :pswitch_143
        :pswitch_133
        :pswitch_123
        :pswitch_113
        :pswitch_103
        :pswitch_f3
        :pswitch_e3
        :pswitch_d3
        :pswitch_c3
        :pswitch_a9
        :pswitch_99
        :pswitch_89
        :pswitch_73
        :pswitch_5f
        :pswitch_4b
        :pswitch_25
    .end packed-switch
.end method
