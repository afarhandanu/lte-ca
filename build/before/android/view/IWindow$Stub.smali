.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x9

.field static final greylist-max-o TRANSACTION_dispatchAppVisibility:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatchDragEvent:I = 0xc

.field static final greylist-max-o TRANSACTION_dispatchGetNewSurface:I = 0x8

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0xb

.field static final greylist-max-o TRANSACTION_dispatchWallpaperOffsets:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatchWindowShown:I = 0xd

.field static final blacklist TRANSACTION_dumpWindow:I = 0x10

.field static final greylist-max-o TRANSACTION_executeCommand:I = 0x1

.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_moved:I = 0x6

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0xe

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0xf

.field static final greylist-max-o TRANSACTION_resized:I = 0x2

.field static final blacklist TRANSACTION_showInsets:I = 0x4


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_4
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_13

    .line 132
    check-cast v0, Landroid/view/IWindow;

    return-object v0

    .line 134
    :cond_13
    new-instance v0, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 143
    packed-switch p0, :pswitch_data_3a

    .line 211
    const/4 p0, 0x0

    return-object p0

    .line 207
    :pswitch_5
    const-string p0, "dumpWindow"

    return-object p0

    .line 203
    :pswitch_8
    const-string/jumbo p0, "requestScrollCapture"

    return-object p0

    .line 199
    :pswitch_c
    const-string/jumbo p0, "requestAppKeyboardShortcuts"

    return-object p0

    .line 195
    :pswitch_10
    const-string p0, "dispatchWindowShown"

    return-object p0

    .line 191
    :pswitch_13
    const-string p0, "dispatchDragEvent"

    return-object p0

    .line 187
    :pswitch_16
    const-string p0, "dispatchWallpaperCommand"

    return-object p0

    .line 183
    :pswitch_19
    const-string p0, "dispatchWallpaperOffsets"

    return-object p0

    .line 179
    :pswitch_1c
    const-string p0, "closeSystemDialogs"

    return-object p0

    .line 175
    :pswitch_1f
    const-string p0, "dispatchGetNewSurface"

    return-object p0

    .line 171
    :pswitch_22
    const-string p0, "dispatchAppVisibility"

    return-object p0

    .line 167
    :pswitch_25
    const-string/jumbo p0, "moved"

    return-object p0

    .line 163
    :pswitch_29
    const-string p0, "hideInsets"

    return-object p0

    .line 159
    :pswitch_2c
    const-string/jumbo p0, "showInsets"

    return-object p0

    .line 155
    :pswitch_30
    const-string p0, "insetsControlChanged"

    return-object p0

    .line 151
    :pswitch_33
    const-string/jumbo p0, "resized"

    return-object p0

    .line 147
    :pswitch_37
    const-string p0, "executeCommand"

    return-object p0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 138
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 689
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 218
    invoke-static {p1}, Landroid/view/IWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 222
    nop

    .line 223
    const-string v3, "android.view.IWindow"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 224
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v7

    .line 230
    :cond_17
    packed-switch p1, :pswitch_data_156

    .line 398
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 391
    :pswitch_1f
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dumpWindow(Landroid/os/ParcelFileDescriptor;)V

    .line 394
    goto/16 :goto_154

    .line 383
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V

    .line 386
    goto/16 :goto_154

    .line 373
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 378
    goto/16 :goto_154

    .line 367
    :pswitch_53
    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    .line 368
    goto/16 :goto_154

    .line 360
    :pswitch_58
    sget-object v1, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 363
    goto/16 :goto_154

    .line 344
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 348
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    move v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 352
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    move-object v0, p0

    move v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 355
    goto/16 :goto_154

    .line 328
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFF)V

    .line 339
    goto/16 :goto_154

    .line 320
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 323
    goto/16 :goto_154

    .line 314
    :pswitch_b6
    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    .line 315
    goto/16 :goto_154

    .line 305
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(ZI)V

    .line 310
    goto/16 :goto_154

    .line 295
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindow$Stub;->moved(II)V

    .line 300
    goto/16 :goto_154

    .line 285
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindow$Stub;->hideInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 290
    goto :goto_154

    .line 275
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindow$Stub;->showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 280
    goto :goto_154

    .line 265
    :pswitch_101
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    .line 267
    sget-object v3, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceControl$Array;

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindow$Stub;->insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 270
    goto :goto_154

    .line 247
    :pswitch_118
    sget-object v2, Landroid/view/WindowRelayoutResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowRelayoutResult;

    .line 249
    move-object v1, v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->resized(Landroid/view/WindowRelayoutResult;ZZIZZ)V

    .line 260
    goto :goto_154

    .line 235
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 242
    nop

    .line 401
    :goto_154
    return v7

    nop

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_13d
        :pswitch_118
        :pswitch_101
        :pswitch_ee
        :pswitch_db
        :pswitch_cb
        :pswitch_bb
        :pswitch_b6
        :pswitch_aa
        :pswitch_8d
        :pswitch_68
        :pswitch_58
        :pswitch_53
        :pswitch_3f
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
