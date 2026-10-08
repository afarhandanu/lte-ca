.class public abstract Landroid/view/autofill/IAutoFillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManagerClient"

.field static final greylist-max-o TRANSACTION_authenticate:I = 0x6

.field static final greylist-max-o TRANSACTION_autofill:I = 0x2

.field static final blacklist TRANSACTION_autofillContent:I = 0x5

.field static final greylist-max-o TRANSACTION_dispatchUnhandledKey:I = 0xe

.field static final blacklist TRANSACTION_getAugmentedAutofillClient:I = 0x12

.field static final blacklist TRANSACTION_notifyDisableAutofill:I = 0x13

.field static final blacklist TRANSACTION_notifyFillDialogTriggerIds:I = 0x15

.field static final blacklist TRANSACTION_notifyFillUiHidden:I = 0xd

.field static final blacklist TRANSACTION_notifyFillUiShown:I = 0xc

.field static final greylist-max-o TRANSACTION_notifyNoFillUi:I = 0xb

.field static final blacklist TRANSACTION_onGetCredentialException:I = 0x4

.field static final blacklist TRANSACTION_onGetCredentialResponse:I = 0x3

.field static final greylist-max-o TRANSACTION_requestHideFillUi:I = 0x9

.field static final blacklist TRANSACTION_requestHideFillUiWhenDestroyed:I = 0xa

.field static final greylist-max-o TRANSACTION_requestShowFillUi:I = 0x8

.field static final blacklist TRANSACTION_requestShowSoftInput:I = 0x14

.field static final greylist-max-o TRANSACTION_setSaveUiState:I = 0x10

.field static final greylist-max-o TRANSACTION_setSessionFinished:I = 0x11

.field static final greylist-max-o TRANSACTION_setState:I = 0x1

.field static final greylist-max-o TRANSACTION_setTrackedViews:I = 0x7

.field static final greylist-max-o TRANSACTION_startIntentSender:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 140
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;
    .registers 3

    .line 148
    if-nez p0, :cond_4

    .line 149
    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_4
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v1, :cond_13

    .line 153
    check-cast v0, Landroid/view/autofill/IAutoFillManagerClient;

    return-object v0

    .line 155
    :cond_13
    new-instance v0, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 164
    packed-switch p0, :pswitch_data_54

    .line 252
    const/4 p0, 0x0

    return-object p0

    .line 248
    :pswitch_5
    const-string/jumbo p0, "notifyFillDialogTriggerIds"

    return-object p0

    .line 244
    :pswitch_9
    const-string/jumbo p0, "requestShowSoftInput"

    return-object p0

    .line 240
    :pswitch_d
    const-string/jumbo p0, "notifyDisableAutofill"

    return-object p0

    .line 236
    :pswitch_11
    const-string p0, "getAugmentedAutofillClient"

    return-object p0

    .line 232
    :pswitch_14
    const-string/jumbo p0, "setSessionFinished"

    return-object p0

    .line 228
    :pswitch_18
    const-string/jumbo p0, "setSaveUiState"

    return-object p0

    .line 224
    :pswitch_1c
    const-string/jumbo p0, "startIntentSender"

    return-object p0

    .line 220
    :pswitch_20
    const-string p0, "dispatchUnhandledKey"

    return-object p0

    .line 216
    :pswitch_23
    const-string/jumbo p0, "notifyFillUiHidden"

    return-object p0

    .line 212
    :pswitch_27
    const-string/jumbo p0, "notifyFillUiShown"

    return-object p0

    .line 208
    :pswitch_2b
    const-string/jumbo p0, "notifyNoFillUi"

    return-object p0

    .line 204
    :pswitch_2f
    const-string/jumbo p0, "requestHideFillUiWhenDestroyed"

    return-object p0

    .line 200
    :pswitch_33
    const-string/jumbo p0, "requestHideFillUi"

    return-object p0

    .line 196
    :pswitch_37
    const-string/jumbo p0, "requestShowFillUi"

    return-object p0

    .line 192
    :pswitch_3b
    const-string/jumbo p0, "setTrackedViews"

    return-object p0

    .line 188
    :pswitch_3f
    const-string p0, "authenticate"

    return-object p0

    .line 184
    :pswitch_42
    const-string p0, "autofillContent"

    return-object p0

    .line 180
    :pswitch_45
    const-string/jumbo p0, "onGetCredentialException"

    return-object p0

    .line 176
    :pswitch_49
    const-string/jumbo p0, "onGetCredentialResponse"

    return-object p0

    .line 172
    :pswitch_4d
    const-string p0, "autofill"

    return-object p0

    .line 168
    :pswitch_50
    const-string/jumbo p0, "setState"

    return-object p0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 159
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 898
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 259
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 263
    nop

    .line 264
    const-string v3, "android.view.autofill.IAutoFillManagerClient"

    const/4 v8, 0x1

    if-lt p1, v8, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 265
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 268
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    return v8

    .line 271
    :cond_17
    packed-switch p1, :pswitch_data_222

    .line 517
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 510
    :pswitch_1f
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillDialogTriggerIds(Ljava/util/List;)V

    .line 513
    goto/16 :goto_220

    .line 502
    :pswitch_2d
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 505
    goto/16 :goto_220

    .line 492
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 494
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v3, v4, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyDisableAutofill(JLandroid/content/ComponentName;)V

    .line 497
    goto/16 :goto_220

    .line 484
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    .line 487
    goto/16 :goto_220

    .line 474
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 476
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSessionFinished(ILjava/util/List;)V

    .line 479
    goto/16 :goto_220

    .line 464
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v1, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSaveUiState(IZ)V

    .line 469
    goto/16 :goto_220

    .line 454
    :pswitch_83
    sget-object v1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 456
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v1, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 459
    goto/16 :goto_220

    .line 442
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 444
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 446
    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    .line 449
    goto/16 :goto_220

    .line 432
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 434
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v1, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V

    .line 437
    goto/16 :goto_220

    .line 422
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 424
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v1, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V

    .line 427
    goto/16 :goto_220

    .line 410
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    .line 417
    goto/16 :goto_220

    .line 400
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v1, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUiWhenDestroyed(ILandroid/view/autofill/AutofillId;)V

    .line 405
    goto/16 :goto_220

    .line 390
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v1, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 395
    goto/16 :goto_220

    .line 372
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 376
    move-object v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    move-object v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 380
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v7

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    move-object v0, p0

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 385
    goto/16 :goto_220

    .line 352
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 360
    sget-object v5, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/autofill/AutofillId;

    .line 362
    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    move-object v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V

    .line 367
    goto/16 :goto_220

    .line 336
    :pswitch_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 342
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    move v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 347
    goto/16 :goto_220

    .line 324
    :pswitch_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 328
    sget-object v4, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    .line 331
    goto :goto_220

    .line 310
    :pswitch_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    goto :goto_220

    .line 298
    :pswitch_1df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 302
    sget-object v4, Landroid/credentials/GetCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/credentials/GetCredentialResponse;

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    .line 305
    goto :goto_220

    .line 284
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 288
    sget-object v4, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 293
    goto :goto_220

    .line 276
    :pswitch_215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setState(I)V

    .line 279
    nop

    .line 520
    :goto_220
    return v8

    nop

    :pswitch_data_222
    .packed-switch 0x1
        :pswitch_215
        :pswitch_1fa
        :pswitch_1df
        :pswitch_1c4
        :pswitch_1a9
        :pswitch_183
        :pswitch_151
        :pswitch_11f
        :pswitch_10b
        :pswitch_f7
        :pswitch_df
        :pswitch_cb
        :pswitch_b7
        :pswitch_9b
        :pswitch_83
        :pswitch_73
        :pswitch_61
        :pswitch_51
        :pswitch_3d
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method
