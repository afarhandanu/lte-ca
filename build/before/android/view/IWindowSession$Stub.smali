.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final greylist-max-o TRANSACTION_addToDisplay:I = 0x1

.field static final blacklist TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_cancelDragAndDrop:I = 0xd

.field static final blacklist TRANSACTION_cancelDraw:I = 0x26

.field static final blacklist TRANSACTION_clearTouchableRegion:I = 0x25

.field static final greylist-max-o TRANSACTION_dragRecipientEntered:I = 0xe

.field static final greylist-max-o TRANSACTION_dragRecipientExited:I = 0xf

.field static final blacklist TRANSACTION_dropForAccessibility:I = 0xb

.field static final greylist-max-o TRANSACTION_finishDrawing:I = 0x9

.field static final blacklist TRANSACTION_finishMovingTask:I = 0x19

.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x23

.field static final greylist-max-o TRANSACTION_getWindowId:I = 0x16

.field static final blacklist TRANSACTION_grantEmbeddedWindowFocus:I = 0x22

.field static final blacklist TRANSACTION_grantInputChannel:I = 0x20

.field static final blacklist TRANSACTION_moveFocusToAdjacentWindow:I = 0x27

.field static final blacklist TRANSACTION_notifyImeWindowVisibilityChangedFromClient:I = 0x28

.field static final greylist-max-o TRANSACTION_onRectangleOnScreenRequested:I = 0x15

.field static final greylist-max-o TRANSACTION_outOfMemory:I = 0x7

.field static final greylist-max-o TRANSACTION_performDrag:I = 0xa

.field static final greylist-max-o TRANSACTION_pokeDrawLock:I = 0x17

.field static final greylist-max-o TRANSACTION_relayout:I = 0x5

.field static final blacklist TRANSACTION_relayoutAsync:I = 0x6

.field static final greylist-max-o TRANSACTION_remove:I = 0x4

.field static final blacklist TRANSACTION_reportDecorViewGestureInterceptionChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_reportDropResult:I = 0xc

.field static final blacklist TRANSACTION_reportKeepClearAreasChanged:I = 0x1f

.field static final blacklist TRANSACTION_reportSystemGestureExclusionChanged:I = 0x1d

.field static final greylist-max-o TRANSACTION_sendWallpaperCommand:I = 0x14

.field static final greylist-max-o TRANSACTION_setInsets:I = 0x8

.field static final blacklist TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x24

.field static final blacklist TRANSACTION_setShouldZoomOutWallpaper:I = 0x12

.field static final greylist-max-o TRANSACTION_setWallpaperDisplayOffset:I = 0x13

.field static final greylist-max-o TRANSACTION_setWallpaperPosition:I = 0x10

.field static final blacklist TRANSACTION_setWallpaperZoomOut:I = 0x11

.field static final greylist-max-o TRANSACTION_startMovingTask:I = 0x18

.field static final blacklist TRANSACTION_updateAnimatingTypes:I = 0x1c

.field static final blacklist TRANSACTION_updateInputChannel:I = 0x21

.field static final blacklist TRANSACTION_updateRequestedVisibleTypes:I = 0x1b

.field static final greylist-max-o TRANSACTION_updateTapExcludeRegion:I = 0x1a


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 355
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 356
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .registers 3

    .line 364
    if-nez p0, :cond_4

    .line 365
    const/4 p0, 0x0

    return-object p0

    .line 367
    :cond_4
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_13

    .line 369
    check-cast v0, Landroid/view/IWindowSession;

    return-object v0

    .line 371
    :cond_13
    new-instance v0, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 380
    packed-switch p0, :pswitch_data_96

    .line 544
    const/4 p0, 0x0

    return-object p0

    .line 540
    :pswitch_5
    const-string/jumbo p0, "notifyImeWindowVisibilityChangedFromClient"

    return-object p0

    .line 536
    :pswitch_9
    const-string/jumbo p0, "moveFocusToAdjacentWindow"

    return-object p0

    .line 532
    :pswitch_d
    const-string p0, "cancelDraw"

    return-object p0

    .line 528
    :pswitch_10
    const-string p0, "clearTouchableRegion"

    return-object p0

    .line 524
    :pswitch_13
    const-string/jumbo p0, "setOnBackInvokedCallbackInfo"

    return-object p0

    .line 520
    :pswitch_17
    const-string p0, "generateDisplayHash"

    return-object p0

    .line 516
    :pswitch_1a
    const-string p0, "grantEmbeddedWindowFocus"

    return-object p0

    .line 512
    :pswitch_1d
    const-string/jumbo p0, "updateInputChannel"

    return-object p0

    .line 508
    :pswitch_21
    const-string p0, "grantInputChannel"

    return-object p0

    .line 504
    :pswitch_24
    const-string/jumbo p0, "reportKeepClearAreasChanged"

    return-object p0

    .line 500
    :pswitch_28
    const-string/jumbo p0, "reportDecorViewGestureInterceptionChanged"

    return-object p0

    .line 496
    :pswitch_2c
    const-string/jumbo p0, "reportSystemGestureExclusionChanged"

    return-object p0

    .line 492
    :pswitch_30
    const-string/jumbo p0, "updateAnimatingTypes"

    return-object p0

    .line 488
    :pswitch_34
    const-string/jumbo p0, "updateRequestedVisibleTypes"

    return-object p0

    .line 484
    :pswitch_38
    const-string/jumbo p0, "updateTapExcludeRegion"

    return-object p0

    .line 480
    :pswitch_3c
    const-string p0, "finishMovingTask"

    return-object p0

    .line 476
    :pswitch_3f
    const-string/jumbo p0, "startMovingTask"

    return-object p0

    .line 472
    :pswitch_43
    const-string/jumbo p0, "pokeDrawLock"

    return-object p0

    .line 468
    :pswitch_47
    const-string p0, "getWindowId"

    return-object p0

    .line 464
    :pswitch_4a
    const-string/jumbo p0, "onRectangleOnScreenRequested"

    return-object p0

    .line 460
    :pswitch_4e
    const-string/jumbo p0, "sendWallpaperCommand"

    return-object p0

    .line 456
    :pswitch_52
    const-string/jumbo p0, "setWallpaperDisplayOffset"

    return-object p0

    .line 452
    :pswitch_56
    const-string/jumbo p0, "setShouldZoomOutWallpaper"

    return-object p0

    .line 448
    :pswitch_5a
    const-string/jumbo p0, "setWallpaperZoomOut"

    return-object p0

    .line 444
    :pswitch_5e
    const-string/jumbo p0, "setWallpaperPosition"

    return-object p0

    .line 440
    :pswitch_62
    const-string p0, "dragRecipientExited"

    return-object p0

    .line 436
    :pswitch_65
    const-string p0, "dragRecipientEntered"

    return-object p0

    .line 432
    :pswitch_68
    const-string p0, "cancelDragAndDrop"

    return-object p0

    .line 428
    :pswitch_6b
    const-string/jumbo p0, "reportDropResult"

    return-object p0

    .line 424
    :pswitch_6f
    const-string p0, "dropForAccessibility"

    return-object p0

    .line 420
    :pswitch_72
    const-string/jumbo p0, "performDrag"

    return-object p0

    .line 416
    :pswitch_76
    const-string p0, "finishDrawing"

    return-object p0

    .line 412
    :pswitch_79
    const-string/jumbo p0, "setInsets"

    return-object p0

    .line 408
    :pswitch_7d
    const-string/jumbo p0, "outOfMemory"

    return-object p0

    .line 404
    :pswitch_81
    const-string/jumbo p0, "relayoutAsync"

    return-object p0

    .line 400
    :pswitch_85
    const-string/jumbo p0, "relayout"

    return-object p0

    .line 396
    :pswitch_89
    const-string/jumbo p0, "remove"

    return-object p0

    .line 392
    :pswitch_8d
    const-string p0, "addToDisplayWithoutInputChannel"

    return-object p0

    .line 388
    :pswitch_90
    const-string p0, "addToDisplayAsUser"

    return-object p0

    .line 384
    :pswitch_93
    const-string p0, "addToDisplay"

    return-object p0

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 375
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2076
    const/16 v0, 0x27

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 551
    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    .line 556
    const-string v3, "android.view.IWindowSession"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_13

    const v4, 0xffffff

    if-gt v1, v4, :cond_13

    .line 557
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    :cond_13
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1c

    .line 560
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    return v13

    .line 563
    :cond_1c
    packed-switch v1, :pswitch_data_540

    .line 1134
    move-object v0, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1123
    :pswitch_25
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1125
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1127
    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    .line 1128
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1130
    goto/16 :goto_53e

    .line 1111
    :pswitch_41
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1113
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1114
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z

    move-result v0

    .line 1116
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1118
    goto/16 :goto_53e

    .line 1099
    :pswitch_5c
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1101
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1102
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->cancelDraw(Landroid/view/IWindow;I)Z

    move-result v0

    .line 1104
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1106
    goto/16 :goto_53e

    .line 1090
    :pswitch_77
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1091
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    .line 1093
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    goto/16 :goto_53e

    .line 1080
    :pswitch_8a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1082
    sget-object v3, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/OnBackInvokedCallbackInfo;

    .line 1083
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 1085
    goto/16 :goto_53e

    .line 1066
    :pswitch_a2
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1068
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1070
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1072
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 1073
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 1075
    goto/16 :goto_53e

    .line 1053
    :pswitch_c6
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1055
    sget-object v3, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/InputTransferToken;

    .line 1057
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1058
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V

    .line 1060
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_53e

    .line 1031
    :pswitch_e5
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1033
    sget-object v3, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/InputTransferToken;

    .line 1035
    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1037
    sget-object v5, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    .line 1039
    move-object v6, v4

    move-object v4, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1041
    move-object v7, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1043
    move-object v8, v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1045
    sget-object v9, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Region;

    .line 1046
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    move-object v0, p0

    move-object v2, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V

    .line 1048
    goto/16 :goto_53e

    .line 1001
    :pswitch_121
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1003
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 1005
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1007
    sget-object v4, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/InputTransferToken;

    .line 1009
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1011
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1013
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1015
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1017
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1019
    sget-object v10, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/InputTransferToken;

    .line 1021
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1022
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    move-object v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    .line 1024
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1026
    goto/16 :goto_53e

    .line 989
    :pswitch_16a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 991
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 993
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 994
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    .line 996
    goto/16 :goto_53e

    .line 979
    :pswitch_186
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 981
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 982
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V

    .line 984
    goto/16 :goto_53e

    .line 969
    :pswitch_19a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 971
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 972
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    .line 974
    goto/16 :goto_53e

    .line 957
    :pswitch_1b0
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 959
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 961
    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    .line 962
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->updateAnimatingTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 964
    goto/16 :goto_53e

    .line 945
    :pswitch_1cc
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 947
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 949
    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    .line 950
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 952
    goto/16 :goto_53e

    .line 935
    :pswitch_1e8
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 937
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 938
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 940
    goto/16 :goto_53e

    .line 927
    :pswitch_200
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 928
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    .line 930
    goto/16 :goto_53e

    .line 913
    :pswitch_210
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 915
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 917
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 918
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v0

    .line 920
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 922
    goto/16 :goto_53e

    .line 904
    :pswitch_22f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 905
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 907
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    goto/16 :goto_53e

    .line 894
    :pswitch_23e
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 895
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    .line 897
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 899
    goto/16 :goto_53e

    .line 882
    :pswitch_251
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 884
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 886
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 887
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 889
    goto/16 :goto_53e

    .line 864
    :pswitch_269
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 866
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 868
    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 870
    move-object v5, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 872
    move-object v6, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 874
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 875
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    move-object v0, p0

    move-object v2, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 877
    goto/16 :goto_53e

    .line 852
    :pswitch_293
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 854
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 856
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 857
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 859
    goto/16 :goto_53e

    .line 842
    :pswitch_2a7
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 844
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 845
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 847
    goto/16 :goto_53e

    .line 832
    :pswitch_2b7
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 834
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 835
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v1, v3}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 837
    goto/16 :goto_53e

    .line 816
    :pswitch_2c7
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 824
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 825
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 827
    goto/16 :goto_53e

    .line 808
    :pswitch_2e6
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 809
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 811
    goto/16 :goto_53e

    .line 800
    :pswitch_2f7
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 801
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 803
    goto/16 :goto_53e

    .line 790
    :pswitch_308
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 792
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 793
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 795
    goto/16 :goto_53e

    .line 780
    :pswitch_319
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 782
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 783
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 785
    goto/16 :goto_53e

    .line 766
    :pswitch_32e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 768
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 771
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v0

    .line 773
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 775
    goto/16 :goto_53e

    .line 736
    :pswitch_34e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 738
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 740
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 742
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 744
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 746
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 748
    move v8, v7

    invoke-virtual {v6}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 750
    move v9, v8

    invoke-virtual {v6}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 752
    move v10, v9

    invoke-virtual {v6}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 754
    move v11, v10

    invoke-virtual {v6}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 756
    sget-object v14, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ClipData;

    .line 757
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    move-object v0, p0

    move v6, v11

    move-object v11, v14

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    .line 759
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 761
    goto/16 :goto_53e

    .line 724
    :pswitch_39d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 726
    sget-object v2, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 728
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 729
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 731
    goto/16 :goto_53e

    .line 708
    :pswitch_3ba
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 710
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 712
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 714
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 716
    sget-object v5, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    .line 717
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 719
    goto/16 :goto_53e

    .line 698
    :pswitch_3e8
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 699
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    .line 701
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 703
    goto/16 :goto_53e

    .line 676
    :pswitch_400
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 678
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 680
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 682
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 684
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 690
    move-object/from16 v9, p2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 691
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V

    .line 693
    goto/16 :goto_53e

    .line 646
    :pswitch_434
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 648
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 650
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 652
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 654
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 656
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 658
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 660
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 662
    move-object v0, v9

    new-instance v9, Landroid/view/WindowRelayoutResult;

    invoke-direct {v9}, Landroid/view/WindowRelayoutResult;-><init>()V

    .line 664
    new-instance v10, Landroid/view/SurfaceControl;

    invoke-direct {v10}, Landroid/view/SurfaceControl;-><init>()V

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;Landroid/view/SurfaceControl;)I

    move-result v0

    .line 667
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    invoke-virtual {v12, v9, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 670
    invoke-virtual {v12, v10, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 671
    goto/16 :goto_53e

    .line 637
    :pswitch_47f
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v2}, Landroid/view/IWindowSession$Stub;->remove(Landroid/os/IBinder;)V

    .line 640
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    goto/16 :goto_53e

    .line 618
    :pswitch_48f
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 620
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 622
    move-object v1, v2

    move-object v2, v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 626
    new-instance v5, Landroid/view/WindowRelayoutResult;

    invoke-direct {v5}, Landroid/view/WindowRelayoutResult;-><init>()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/WindowRelayoutResult;)I

    move-result v0

    .line 629
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    invoke-virtual {v12, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 632
    goto/16 :goto_53e

    .line 592
    :pswitch_4c2
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 594
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 604
    new-instance v7, Landroid/view/InputChannel;

    invoke-direct {v7}, Landroid/view/InputChannel;-><init>()V

    .line 606
    new-instance v8, Landroid/view/WindowRelayoutResult;

    invoke-direct {v8}, Landroid/view/WindowRelayoutResult;-><init>()V

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result v0

    .line 609
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    invoke-virtual {v12, v7, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 612
    invoke-virtual {v12, v8, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 613
    goto :goto_53e

    .line 568
    :pswitch_502
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 570
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 572
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 578
    new-instance v6, Landroid/view/InputChannel;

    invoke-direct {v6}, Landroid/view/InputChannel;-><init>()V

    .line 580
    new-instance v7, Landroid/view/WindowRelayoutResult;

    invoke-direct {v7}, Landroid/view/WindowRelayoutResult;-><init>()V

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result v0

    .line 583
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {v12, v6, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 586
    invoke-virtual {v12, v7, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 587
    nop

    .line 1137
    :goto_53e
    return v13

    nop

    :pswitch_data_540
    .packed-switch 0x1
        :pswitch_502
        :pswitch_4c2
        :pswitch_48f
        :pswitch_47f
        :pswitch_434
        :pswitch_400
        :pswitch_3e8
        :pswitch_3ba
        :pswitch_39d
        :pswitch_34e
        :pswitch_32e
        :pswitch_319
        :pswitch_308
        :pswitch_2f7
        :pswitch_2e6
        :pswitch_2c7
        :pswitch_2b7
        :pswitch_2a7
        :pswitch_293
        :pswitch_269
        :pswitch_251
        :pswitch_23e
        :pswitch_22f
        :pswitch_210
        :pswitch_200
        :pswitch_1e8
        :pswitch_1cc
        :pswitch_1b0
        :pswitch_19a
        :pswitch_186
        :pswitch_16a
        :pswitch_121
        :pswitch_e5
        :pswitch_c6
        :pswitch_a2
        :pswitch_8a
        :pswitch_77
        :pswitch_5c
        :pswitch_41
        :pswitch_25
    .end packed-switch
.end method
