.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToWindow:I = 0xb

.field static final blacklist TRANSACTION_clearAccessibilityFocus:I = 0x7

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x2

.field static final greylist-max-o TRANSACTION_findFocus:I = 0x4

.field static final greylist-max-o TRANSACTION_focusSearch:I = 0x5

.field static final blacklist TRANSACTION_getWindowSurfaceInfo:I = 0xa

.field static final blacklist TRANSACTION_notifyOutsideTouch:I = 0x8

.field static final greylist-max-o TRANSACTION_performAccessibilityAction:I = 0x6

.field static final blacklist TRANSACTION_takeScreenshotOfWindow:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 90
    packed-switch p0, :pswitch_data_2a

    .line 138
    const/4 p0, 0x0

    return-object p0

    .line 134
    :pswitch_5
    const-string p0, "attachAccessibilityOverlayToWindow"

    return-object p0

    .line 130
    :pswitch_8
    const-string p0, "getWindowSurfaceInfo"

    return-object p0

    .line 126
    :pswitch_b
    const-string/jumbo p0, "takeScreenshotOfWindow"

    return-object p0

    .line 122
    :pswitch_f
    const-string/jumbo p0, "notifyOutsideTouch"

    return-object p0

    .line 118
    :pswitch_13
    const-string p0, "clearAccessibilityFocus"

    return-object p0

    .line 114
    :pswitch_16
    const-string/jumbo p0, "performAccessibilityAction"

    return-object p0

    .line 110
    :pswitch_1a
    const-string p0, "focusSearch"

    return-object p0

    .line 106
    :pswitch_1d
    const-string p0, "findFocus"

    return-object p0

    .line 102
    :pswitch_20
    const-string p0, "findAccessibilityNodeInfosByText"

    return-object p0

    .line 98
    :pswitch_23
    const-string p0, "findAccessibilityNodeInfosByViewId"

    return-object p0

    .line 94
    :pswitch_26
    const-string p0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 578
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 145
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 150
    const-string v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_13

    const v4, 0xffffff

    if-gt v1, v4, :cond_13

    .line 151
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_13
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 154
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v13

    .line 157
    :cond_1e
    move-object/from16 v4, p3

    packed-switch v1, :pswitch_data_1fc

    .line 355
    move-object v11, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 344
    :pswitch_29
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 348
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v4

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachAccessibilityOverlayToWindow(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 351
    goto/16 :goto_1fa

    .line 336
    :pswitch_45
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowSurfaceInfoCallback;

    move-result-object v1

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getWindowSurfaceInfo(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V

    .line 339
    goto/16 :goto_1fa

    .line 324
    :pswitch_55
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    sget-object v3, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    .line 328
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v4

    .line 329
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->takeScreenshotOfWindow(ILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 331
    goto/16 :goto_1fa

    .line 318
    :pswitch_71
    invoke-virtual {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->notifyOutsideTouch()V

    .line 319
    goto/16 :goto_1fa

    .line 313
    :pswitch_76
    invoke-virtual {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->clearAccessibilityFocus()V

    .line 314
    goto/16 :goto_1fa

    .line 292
    :pswitch_7b
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 294
    move-wide v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 296
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 298
    move-wide v14, v4

    move-object v4, v1

    move-wide v1, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 302
    move-object v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 306
    move-object/from16 v11, p2

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 307
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 309
    goto/16 :goto_1fa

    .line 266
    :pswitch_b2
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 268
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 272
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 276
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 278
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 280
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 282
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 284
    invoke-virtual {v11}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 285
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    move-object v11, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 287
    goto/16 :goto_1fa

    .line 240
    :pswitch_f3
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 242
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 246
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 248
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 250
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 252
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 254
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 256
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 258
    invoke-virtual {v11}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 259
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    move-object v11, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 261
    goto/16 :goto_1fa

    .line 214
    :pswitch_134
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 216
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 218
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 220
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 222
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 224
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 226
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 228
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 230
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 232
    invoke-virtual {v11}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 233
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    move-object v11, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 235
    goto/16 :goto_1fa

    .line 188
    :pswitch_175
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 190
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 194
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 196
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 198
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 200
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 202
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 204
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 206
    invoke-virtual {v11}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 207
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    move-object v11, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 209
    goto :goto_1fa

    .line 162
    :pswitch_1b5
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 164
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Region;

    .line 166
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 168
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 170
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 172
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 174
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 176
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/MagnificationSpec;

    .line 178
    invoke-virtual {v11}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 180
    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 181
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    move-object v11, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 183
    nop

    .line 358
    :goto_1fa
    return v13

    nop

    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_1b5
        :pswitch_175
        :pswitch_134
        :pswitch_f3
        :pswitch_b2
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_55
        :pswitch_45
        :pswitch_29
    .end packed-switch
.end method
