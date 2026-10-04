.class public abstract Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IMagnificationConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IMagnificationConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IMagnificationConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IMagnificationConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAccessibilityActionPerformed:I = 0x5

.field static final blacklist TRANSACTION_onChangeMagnificationMode:I = 0x2

.field static final blacklist TRANSACTION_onMove:I = 0x6

.field static final blacklist TRANSACTION_onPerformScaleAction:I = 0x4

.field static final blacklist TRANSACTION_onSourceBoundsChanged:I = 0x3

.field static final blacklist TRANSACTION_onWindowMagnifierBoundsChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "android.view.accessibility.IMagnificationConnectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnectionCallback;
    .registers 3

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_4
    const-string v0, "android.view.accessibility.IMagnificationConnectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v1, :cond_13

    .line 101
    check-cast v0, Landroid/view/accessibility/IMagnificationConnectionCallback;

    return-object v0

    .line 103
    :cond_13
    new-instance v0, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 112
    packed-switch p0, :pswitch_data_1e

    .line 140
    const/4 p0, 0x0

    return-object p0

    .line 136
    :pswitch_5
    const-string/jumbo p0, "onMove"

    return-object p0

    .line 132
    :pswitch_9
    const-string/jumbo p0, "onAccessibilityActionPerformed"

    return-object p0

    .line 128
    :pswitch_d
    const-string/jumbo p0, "onPerformScaleAction"

    return-object p0

    .line 124
    :pswitch_11
    const-string/jumbo p0, "onSourceBoundsChanged"

    return-object p0

    .line 120
    :pswitch_15
    const-string/jumbo p0, "onChangeMagnificationMode"

    return-object p0

    .line 116
    :pswitch_19
    const-string/jumbo p0, "onWindowMagnifierBoundsChanged"

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

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 365
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 147
    invoke-static {p1}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 151
    nop

    .line 152
    const-string v0, "android.view.accessibility.IMagnificationConnectionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 159
    :cond_17
    packed-switch p1, :pswitch_data_7e

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 214
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, p1}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onMove(I)V

    .line 217
    goto :goto_7d

    .line 206
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, p1}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onAccessibilityActionPerformed(I)V

    .line 209
    goto :goto_7d

    .line 194
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, p1, p3, p4}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onPerformScaleAction(IFZ)V

    .line 201
    goto :goto_7d

    .line 184
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 186
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V

    .line 189
    goto :goto_7d

    .line 174
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onChangeMagnificationMode(II)V

    .line 179
    goto :goto_7d

    .line 164
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1, p3}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V

    .line 169
    nop

    .line 224
    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_5b
        :pswitch_48
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
