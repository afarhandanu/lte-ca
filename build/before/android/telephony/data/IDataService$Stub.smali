.class public abstract Landroid/telephony/data/IDataService$Stub;
.super Landroid/os/Binder;
.source "IDataService.java"

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataService"

.field static final blacklist TRANSACTION_cancelHandover:I = 0xb

.field static final greylist-max-o TRANSACTION_createDataServiceProvider:I = 0x1

.field static final greylist-max-o TRANSACTION_deactivateDataCall:I = 0x4

.field static final blacklist TRANSACTION_notifyImsDataNetwork:I = 0x11

.field static final blacklist TRANSACTION_notifyUserDataEnabled:I = 0xf

.field static final blacklist TRANSACTION_notifyUserDataRoamingEnabled:I = 0x10

.field static final greylist-max-o TRANSACTION_registerForDataCallListChanged:I = 0x8

.field static final blacklist TRANSACTION_registerForUnthrottleApn:I = 0xc

.field static final greylist-max-o TRANSACTION_removeDataServiceProvider:I = 0x2

.field static final blacklist TRANSACTION_requestDataCallList:I = 0x7

.field static final blacklist TRANSACTION_requestNetworkValidation:I = 0xe

.field static final greylist-max-o TRANSACTION_setDataProfile:I = 0x6

.field static final greylist-max-o TRANSACTION_setInitialAttachApn:I = 0x5

.field static final greylist-max-o TRANSACTION_setupDataCall:I = 0x3

.field static final blacklist TRANSACTION_startHandover:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterForDataCallListChanged:I = 0x9

.field static final blacklist TRANSACTION_unregisterForUnthrottleApn:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;
    .registers 3

    .line 87
    if-nez p0, :cond_4

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_4
    const-string v0, "android.telephony.data.IDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/data/IDataService;

    if-eqz v1, :cond_13

    .line 92
    check-cast v0, Landroid/telephony/data/IDataService;

    return-object v0

    .line 94
    :cond_13
    new-instance v0, Landroid/telephony/data/IDataService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/data/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 103
    packed-switch p0, :pswitch_data_46

    .line 175
    const/4 p0, 0x0

    return-object p0

    .line 171
    :pswitch_5
    const-string/jumbo p0, "notifyImsDataNetwork"

    return-object p0

    .line 167
    :pswitch_9
    const-string/jumbo p0, "notifyUserDataRoamingEnabled"

    return-object p0

    .line 163
    :pswitch_d
    const-string/jumbo p0, "notifyUserDataEnabled"

    return-object p0

    .line 159
    :pswitch_11
    const-string/jumbo p0, "requestNetworkValidation"

    return-object p0

    .line 155
    :pswitch_15
    const-string/jumbo p0, "unregisterForUnthrottleApn"

    return-object p0

    .line 151
    :pswitch_19
    const-string/jumbo p0, "registerForUnthrottleApn"

    return-object p0

    .line 147
    :pswitch_1d
    const-string p0, "cancelHandover"

    return-object p0

    .line 143
    :pswitch_20
    const-string/jumbo p0, "startHandover"

    return-object p0

    .line 139
    :pswitch_24
    const-string/jumbo p0, "unregisterForDataCallListChanged"

    return-object p0

    .line 135
    :pswitch_28
    const-string/jumbo p0, "registerForDataCallListChanged"

    return-object p0

    .line 131
    :pswitch_2c
    const-string/jumbo p0, "requestDataCallList"

    return-object p0

    .line 127
    :pswitch_30
    const-string/jumbo p0, "setDataProfile"

    return-object p0

    .line 123
    :pswitch_34
    const-string/jumbo p0, "setInitialAttachApn"

    return-object p0

    .line 119
    :pswitch_38
    const-string p0, "deactivateDataCall"

    return-object p0

    .line 115
    :pswitch_3b
    const-string/jumbo p0, "setupDataCall"

    return-object p0

    .line 111
    :pswitch_3f
    const-string/jumbo p0, "removeDataServiceProvider"

    return-object p0

    .line 107
    :pswitch_43
    const-string p0, "createDataServiceProvider"

    return-object p0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
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

    .line 98
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 701
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 182
    invoke-static {p1}, Landroid/telephony/data/IDataService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 186
    move-object/from16 v1, p2

    .line 187
    const-string v2, "android.telephony.data.IDataService"

    const/4 v13, 0x1

    if-lt p1, v13, :cond_f

    const v3, 0xffffff

    if-gt p1, v3, :cond_f

    .line 188
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    :cond_f
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1a

    .line 191
    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return v13

    .line 194
    :cond_1a
    move-object/from16 v3, p3

    packed-switch p1, :pswitch_data_1f8

    .line 414
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 397
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 405
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 407
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    .line 408
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/data/IDataService$Stub;->notifyImsDataNetwork(IIIIILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 410
    goto/16 :goto_1f6

    .line 385
    :pswitch_4c
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 389
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 390
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->notifyUserDataRoamingEnabled(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 392
    goto/16 :goto_1f6

    .line 373
    :pswitch_65
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 377
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 378
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->notifyUserDataEnabled(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 380
    goto/16 :goto_1f6

    .line 361
    :pswitch_7e
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 366
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->requestNetworkValidation(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 368
    goto/16 :goto_1f6

    .line 351
    :pswitch_97
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    .line 354
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 356
    goto/16 :goto_1f6

    .line 341
    :pswitch_ac
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    .line 344
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 346
    goto/16 :goto_1f6

    .line 329
    :pswitch_c1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 334
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    .line 336
    goto/16 :goto_1f6

    .line 317
    :pswitch_da
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 322
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->startHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    .line 324
    goto/16 :goto_1f6

    .line 307
    :pswitch_f3
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    .line 310
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 312
    goto/16 :goto_1f6

    .line 297
    :pswitch_108
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    .line 300
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 302
    goto/16 :goto_1f6

    .line 287
    :pswitch_11d
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    .line 290
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 292
    goto/16 :goto_1f6

    .line 273
    :pswitch_132
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    sget-object v2, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 277
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 279
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 280
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/telephony/data/IDataService$Stub;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 282
    goto/16 :goto_1f6

    .line 259
    :pswitch_151
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    sget-object v2, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 263
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 265
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 266
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/telephony/data/IDataService$Stub;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 268
    goto/16 :goto_1f6

    .line 245
    :pswitch_172
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 251
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 252
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/telephony/data/IDataService$Stub;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V

    .line 254
    goto :goto_1f6

    .line 215
    :pswitch_18e
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    sget-object v3, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataProfile;

    .line 221
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 223
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 225
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 227
    sget-object v8, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 229
    move v9, v7

    move-object v7, v8

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 231
    sget-object v10, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/data/NetworkSliceInfo;

    .line 233
    sget-object v11, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/data/TrafficDescriptor;

    .line 235
    move v6, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v12

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/telephony/data/IDataService$Stub;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 240
    goto :goto_1f6

    .line 207
    :pswitch_1e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v0}, Landroid/telephony/data/IDataService$Stub;->removeDataServiceProvider(I)V

    .line 210
    goto :goto_1f6

    .line 199
    :pswitch_1eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v0}, Landroid/telephony/data/IDataService$Stub;->createDataServiceProvider(I)V

    .line 202
    nop

    .line 417
    :goto_1f6
    return v13

    nop

    :pswitch_data_1f8
    .packed-switch 0x1
        :pswitch_1eb
        :pswitch_1e0
        :pswitch_18e
        :pswitch_172
        :pswitch_151
        :pswitch_132
        :pswitch_11d
        :pswitch_108
        :pswitch_f3
        :pswitch_da
        :pswitch_c1
        :pswitch_ac
        :pswitch_97
        :pswitch_7e
        :pswitch_65
        :pswitch_4c
        :pswitch_24
    .end packed-switch
.end method
