.class public abstract Landroid/view/IDisplayWindowListener$Stub;
.super Landroid/os/Binder;
.source "IDisplayWindowListener.java"

# interfaces
.implements Landroid/view/IDisplayWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDesktopModeEligibleChanged:I = 0x7

.field static final blacklist TRANSACTION_onDisplayAddSystemDecorations:I = 0x8

.field static final blacklist TRANSACTION_onDisplayAdded:I = 0x1

.field static final blacklist TRANSACTION_onDisplayAnimationsDisabledChanged:I = 0xa

.field static final blacklist TRANSACTION_onDisplayConfigurationChanged:I = 0x2

.field static final blacklist TRANSACTION_onDisplayRemoveSystemDecorations:I = 0x9

.field static final blacklist TRANSACTION_onDisplayRemoved:I = 0x3

.field static final blacklist TRANSACTION_onFixedRotationFinished:I = 0x5

.field static final blacklist TRANSACTION_onFixedRotationStarted:I = 0x4

.field static final blacklist TRANSACTION_onKeepClearAreasChanged:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "android.view.IDisplayWindowListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayWindowListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;
    .registers 3

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_4
    const-string v0, "android.view.IDisplayWindowListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IDisplayWindowListener;

    if-eqz v1, :cond_13

    .line 94
    check-cast v0, Landroid/view/IDisplayWindowListener;

    return-object v0

    .line 96
    :cond_13
    new-instance v0, Landroid/view/IDisplayWindowListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IDisplayWindowListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 105
    packed-switch p0, :pswitch_data_2e

    .line 149
    const/4 p0, 0x0

    return-object p0

    .line 145
    :pswitch_5
    const-string/jumbo p0, "onDisplayAnimationsDisabledChanged"

    return-object p0

    .line 141
    :pswitch_9
    const-string/jumbo p0, "onDisplayRemoveSystemDecorations"

    return-object p0

    .line 137
    :pswitch_d
    const-string/jumbo p0, "onDisplayAddSystemDecorations"

    return-object p0

    .line 133
    :pswitch_11
    const-string/jumbo p0, "onDesktopModeEligibleChanged"

    return-object p0

    .line 129
    :pswitch_15
    const-string/jumbo p0, "onKeepClearAreasChanged"

    return-object p0

    .line 125
    :pswitch_19
    const-string/jumbo p0, "onFixedRotationFinished"

    return-object p0

    .line 121
    :pswitch_1d
    const-string/jumbo p0, "onFixedRotationStarted"

    return-object p0

    .line 117
    :pswitch_21
    const-string/jumbo p0, "onDisplayRemoved"

    return-object p0

    .line 113
    :pswitch_25
    const-string/jumbo p0, "onDisplayConfigurationChanged"

    return-object p0

    .line 109
    :pswitch_29
    const-string/jumbo p0, "onDisplayAdded"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
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

    .line 100
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 434
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 156
    invoke-static {p1}, Landroid/view/IDisplayWindowListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 160
    nop

    .line 161
    const-string v0, "android.view.IDisplayWindowListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v1

    .line 168
    :cond_17
    packed-switch p1, :pswitch_data_ac

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 253
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayAnimationsDisabledChanged(IZ)V

    .line 258
    goto/16 :goto_ab

    .line 245
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayRemoveSystemDecorations(I)V

    .line 248
    goto/16 :goto_ab

    .line 237
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, p1}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayAddSystemDecorations(I)V

    .line 240
    goto :goto_ab

    .line 229
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1}, Landroid/view/IDisplayWindowListener$Stub;->onDesktopModeEligibleChanged(I)V

    .line 232
    goto :goto_ab

    .line 217
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 219
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p3

    .line 221
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1, p3, p4}, Landroid/view/IDisplayWindowListener$Stub;->onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V

    .line 224
    goto :goto_ab

    .line 209
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Landroid/view/IDisplayWindowListener$Stub;->onFixedRotationFinished(I)V

    .line 212
    goto :goto_ab

    .line 199
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowListener$Stub;->onFixedRotationStarted(II)V

    .line 204
    goto :goto_ab

    .line 191
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayRemoved(I)V

    .line 194
    goto :goto_ab

    .line 181
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    sget-object p3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/Configuration;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    .line 186
    goto :goto_ab

    .line 173
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayAdded(I)V

    .line 176
    nop

    .line 265
    :goto_ab
    return v1

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_8d
        :pswitch_82
        :pswitch_73
        :pswitch_68
        :pswitch_51
        :pswitch_46
        :pswitch_3b
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
