.class public abstract Landroid/view/accessibility/IMagnificationConnection$Stub;
.super Landroid/os/Binder;
.source "IMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IMagnificationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableWindowMagnification:I = 0x3

.field static final blacklist TRANSACTION_enableWindowMagnification:I = 0x1

.field static final blacklist TRANSACTION_moveWindowMagnifier:I = 0x4

.field static final blacklist TRANSACTION_moveWindowMagnifierToPosition:I = 0x5

.field static final blacklist TRANSACTION_onFullscreenMagnificationActivationChanged:I = 0xb

.field static final blacklist TRANSACTION_onUserMagnificationScaleChanged:I = 0xa

.field static final blacklist TRANSACTION_removeMagnificationButton:I = 0x7

.field static final blacklist TRANSACTION_removeMagnificationSettingsPanel:I = 0x8

.field static final blacklist TRANSACTION_setConnectionCallback:I = 0x9

.field static final blacklist TRANSACTION_setScaleForWindowMagnification:I = 0x2

.field static final blacklist TRANSACTION_showMagnificationButton:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnection;
    .registers 3

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_4
    const-string v0, "android.view.accessibility.IMagnificationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/accessibility/IMagnificationConnection;

    if-eqz v1, :cond_13

    .line 152
    check-cast v0, Landroid/view/accessibility/IMagnificationConnection;

    return-object v0

    .line 154
    :cond_13
    new-instance v0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 163
    packed-switch p0, :pswitch_data_30

    .line 211
    const/4 p0, 0x0

    return-object p0

    .line 207
    :pswitch_5
    const-string/jumbo p0, "onFullscreenMagnificationActivationChanged"

    return-object p0

    .line 203
    :pswitch_9
    const-string/jumbo p0, "onUserMagnificationScaleChanged"

    return-object p0

    .line 199
    :pswitch_d
    const-string/jumbo p0, "setConnectionCallback"

    return-object p0

    .line 195
    :pswitch_11
    const-string/jumbo p0, "removeMagnificationSettingsPanel"

    return-object p0

    .line 191
    :pswitch_15
    const-string/jumbo p0, "removeMagnificationButton"

    return-object p0

    .line 187
    :pswitch_19
    const-string/jumbo p0, "showMagnificationButton"

    return-object p0

    .line 183
    :pswitch_1d
    const-string/jumbo p0, "moveWindowMagnifierToPosition"

    return-object p0

    .line 179
    :pswitch_21
    const-string/jumbo p0, "moveWindowMagnifier"

    return-object p0

    .line 175
    :pswitch_25
    const-string p0, "disableWindowMagnification"

    return-object p0

    .line 171
    :pswitch_28
    const-string/jumbo p0, "setScaleForWindowMagnification"

    return-object p0

    .line 167
    :pswitch_2c
    const-string p0, "enableWindowMagnification"

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
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

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 613
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 218
    invoke-static {p1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    nop

    .line 223
    const-string v0, "android.view.accessibility.IMagnificationConnection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 224
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 230
    :cond_17
    packed-switch p1, :pswitch_data_f4

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 347
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IMagnificationConnection$Stub;->onFullscreenMagnificationActivationChanged(IZ)V

    .line 352
    goto/16 :goto_f3

    .line 335
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, p1, p3, p4}, Landroid/view/accessibility/IMagnificationConnection$Stub;->onUserMagnificationScaleChanged(IIF)V

    .line 342
    goto/16 :goto_f3

    .line 327
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnectionCallback;

    move-result-object p1

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, p1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V

    .line 330
    goto/16 :goto_f3

    .line 319
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, p1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->removeMagnificationSettingsPanel(I)V

    .line 322
    goto/16 :goto_f3

    .line 311
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->removeMagnificationButton(I)V

    .line 314
    goto/16 :goto_f3

    .line 301
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IMagnificationConnection$Stub;->showMagnificationButton(II)V

    .line 306
    goto/16 :goto_f3

    .line 287
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v0

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 296
    goto :goto_f3

    .line 275
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p3, p4}, Landroid/view/accessibility/IMagnificationConnection$Stub;->moveWindowMagnifier(IFF)V

    .line 282
    goto :goto_f3

    .line 265
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object p3

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IMagnificationConnection$Stub;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 270
    goto :goto_f3

    .line 255
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IMagnificationConnection$Stub;->setScaleForWindowMagnification(IF)V

    .line 260
    goto :goto_f3

    .line 235
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v9

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/IMagnificationConnection$Stub;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 250
    nop

    .line 359
    :goto_f3
    return v1

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_bc
        :pswitch_a9
        :pswitch_96
        :pswitch_7b
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_43
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
