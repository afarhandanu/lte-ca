.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

.field static final blacklist TRANSACTION_sendAttachOverlayResult:I = 0x6

.field static final blacklist TRANSACTION_sendTakeScreenshotOfWindowError:I = 0x5

.field static final greylist-max-o TRANSACTION_setFindAccessibilityNodeInfoResult:I = 0x1

.field static final greylist-max-o TRANSACTION_setFindAccessibilityNodeInfosResult:I = 0x2

.field static final greylist-max-o TRANSACTION_setPerformAccessibilityActionResult:I = 0x4

.field static final blacklist TRANSACTION_setPrefetchAccessibilityNodeInfoResult:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .registers 3

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 101
    packed-switch p0, :pswitch_data_1e

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 125
    :pswitch_5
    const-string/jumbo p0, "sendAttachOverlayResult"

    return-object p0

    .line 121
    :pswitch_9
    const-string/jumbo p0, "sendTakeScreenshotOfWindowError"

    return-object p0

    .line 117
    :pswitch_d
    const-string/jumbo p0, "setPerformAccessibilityActionResult"

    return-object p0

    .line 113
    :pswitch_11
    const-string/jumbo p0, "setPrefetchAccessibilityNodeInfoResult"

    return-object p0

    .line 109
    :pswitch_15
    const-string/jumbo p0, "setFindAccessibilityNodeInfosResult"

    return-object p0

    .line 105
    :pswitch_19
    const-string/jumbo p0, "setFindAccessibilityNodeInfoResult"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 348
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    nop

    .line 141
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_17
    packed-switch p1, :pswitch_data_82

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 203
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->sendAttachOverlayResult(II)V

    .line 208
    goto :goto_81

    .line 193
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->sendTakeScreenshotOfWindowError(II)V

    .line 198
    goto :goto_81

    .line 183
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setPerformAccessibilityActionResult(ZI)V

    .line 188
    goto :goto_81

    .line 173
    :pswitch_4c
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V

    .line 178
    goto :goto_81

    .line 163
    :pswitch_5d
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 168
    goto :goto_81

    .line 153
    :pswitch_6e
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 158
    nop

    .line 215
    :goto_81
    return v1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_5d
        :pswitch_4c
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
