.class public abstract Landroid/window/IWindowOrganizerController$Stub;
.super Landroid/os/Binder;
.source "IWindowOrganizerController.java"

# interfaces
.implements Landroid/window/IWindowOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applySyncTransaction:I = 0x2

.field static final blacklist TRANSACTION_applyTransaction:I = 0x1

.field static final blacklist TRANSACTION_finishTransition:I = 0x5

.field static final blacklist TRANSACTION_getApplyToken:I = 0xd

.field static final blacklist TRANSACTION_getDisplayAreaOrganizerController:I = 0x7

.field static final blacklist TRANSACTION_getMultitaskingController:I = 0x9

.field static final blacklist TRANSACTION_getTaskFragmentOrganizerController:I = 0x8

.field static final blacklist TRANSACTION_getTaskOrganizerController:I = 0x6

.field static final blacklist TRANSACTION_getTransitionMetricsReporter:I = 0xc

.field static final blacklist TRANSACTION_registerTransitionPlayer:I = 0xa

.field static final blacklist TRANSACTION_startNewTransition:I = 0x3

.field static final blacklist TRANSACTION_startTransition:I = 0x4

.field static final blacklist TRANSACTION_unregisterTransitionPlayer:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    const-string v0, "android.window.IWindowOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/IWindowOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IWindowOrganizerController;
    .registers 3

    .line 126
    if-nez p0, :cond_4

    .line 127
    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_4
    const-string v0, "android.window.IWindowOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/IWindowOrganizerController;

    if-eqz v1, :cond_13

    .line 131
    check-cast v0, Landroid/window/IWindowOrganizerController;

    return-object v0

    .line 133
    :cond_13
    new-instance v0, Landroid/window/IWindowOrganizerController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IWindowOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 142
    packed-switch p0, :pswitch_data_30

    .line 198
    const/4 p0, 0x0

    return-object p0

    .line 194
    :pswitch_5
    const-string p0, "getApplyToken"

    return-object p0

    .line 190
    :pswitch_8
    const-string p0, "getTransitionMetricsReporter"

    return-object p0

    .line 186
    :pswitch_b
    const-string/jumbo p0, "unregisterTransitionPlayer"

    return-object p0

    .line 182
    :pswitch_f
    const-string/jumbo p0, "registerTransitionPlayer"

    return-object p0

    .line 178
    :pswitch_13
    const-string p0, "getMultitaskingController"

    return-object p0

    .line 174
    :pswitch_16
    const-string p0, "getTaskFragmentOrganizerController"

    return-object p0

    .line 170
    :pswitch_19
    const-string p0, "getDisplayAreaOrganizerController"

    return-object p0

    .line 166
    :pswitch_1c
    const-string p0, "getTaskOrganizerController"

    return-object p0

    .line 162
    :pswitch_1f
    const-string p0, "finishTransition"

    return-object p0

    .line 158
    :pswitch_22
    const-string/jumbo p0, "startTransition"

    return-object p0

    .line 154
    :pswitch_26
    const-string/jumbo p0, "startNewTransition"

    return-object p0

    .line 150
    :pswitch_2a
    const-string p0, "applySyncTransaction"

    return-object p0

    .line 146
    :pswitch_2d
    const-string p0, "applyTransaction"

    return-object p0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 137
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 633
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 205
    invoke-static {p1}, Landroid/window/IWindowOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 209
    nop

    .line 210
    const-string v0, "android.window.IWindowOrganizerController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 211
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v1

    .line 217
    :cond_17
    packed-switch p1, :pswitch_data_104

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 329
    :pswitch_1f
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getApplyToken()Landroid/os/IBinder;

    move-result-object p1

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 332
    goto/16 :goto_103

    .line 322
    :pswitch_2b
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;

    move-result-object p1

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 325
    goto/16 :goto_103

    .line 314
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITransitionPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITransitionPlayer;

    move-result-object p1

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, p1}, Landroid/window/IWindowOrganizerController$Stub;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    goto/16 :goto_103

    .line 305
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITransitionPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITransitionPlayer;

    move-result-object p1

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, p1}, Landroid/window/IWindowOrganizerController$Stub;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto/16 :goto_103

    .line 297
    :pswitch_5d
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getMultitaskingController()Landroid/window/IMultitaskingController;

    move-result-object p1

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 300
    goto/16 :goto_103

    .line 290
    :pswitch_69
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 293
    goto/16 :goto_103

    .line 283
    :pswitch_75
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 286
    goto/16 :goto_103

    .line 276
    :pswitch_81
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 279
    goto/16 :goto_103

    .line 266
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 268
    sget-object p4, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/WindowContainerTransaction;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1, p4}, Landroid/window/IWindowOrganizerController$Stub;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_103

    .line 255
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 257
    sget-object p4, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/WindowContainerTransaction;

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1, p4}, Landroid/window/IWindowOrganizerController$Stub;->startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_103

    .line 243
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 245
    sget-object p4, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/WindowContainerTransaction;

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1, p4}, Landroid/window/IWindowOrganizerController$Stub;->startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 250
    goto :goto_103

    .line 231
    :pswitch_d3
    sget-object p1, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerTransaction;

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1, p4}, Landroid/window/IWindowOrganizerController$Stub;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result p1

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    goto :goto_103

    .line 222
    :pswitch_f1
    sget-object p1, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerTransaction;

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1}, Landroid/window/IWindowOrganizerController$Stub;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    nop

    .line 339
    :goto_103
    return v1

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_f1
        :pswitch_d3
        :pswitch_b9
        :pswitch_a3
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
