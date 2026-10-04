.class public abstract Landroid/view/IDisplayWindowInsetsController$Stub;
.super Landroid/os/Binder;
.source "IDisplayWindowInsetsController.java"

# interfaces
.implements Landroid/view/IDisplayWindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsChanged:I = 0x2

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final blacklist TRANSACTION_setImeInputTargetRequestedVisibility:I = 0x6

.field static final blacklist TRANSACTION_showInsets:I = 0x4

.field static final blacklist TRANSACTION_topFocusedWindowChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayWindowInsetsController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;
    .registers 3

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_4
    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IDisplayWindowInsetsController;

    if-eqz v1, :cond_13

    .line 77
    check-cast v0, Landroid/view/IDisplayWindowInsetsController;

    return-object v0

    .line 79
    :cond_13
    new-instance v0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 88
    packed-switch p0, :pswitch_data_1a

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 112
    :pswitch_5
    const-string/jumbo p0, "setImeInputTargetRequestedVisibility"

    return-object p0

    .line 108
    :pswitch_9
    const-string p0, "hideInsets"

    return-object p0

    .line 104
    :pswitch_c
    const-string/jumbo p0, "showInsets"

    return-object p0

    .line 100
    :pswitch_10
    const-string p0, "insetsControlChanged"

    return-object p0

    .line 96
    :pswitch_13
    const-string p0, "insetsChanged"

    return-object p0

    .line 92
    :pswitch_16
    const-string/jumbo p0, "topFocusedWindowChanged"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 318
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Landroid/view/IDisplayWindowInsetsController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 127
    nop

    .line 128
    const-string v0, "android.view.IDisplayWindowInsetsController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_17
    packed-switch p1, :pswitch_data_92

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 188
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 190
    sget-object p3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowInsetsController$Stub;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 193
    goto :goto_91

    .line 178
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    sget-object p3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowInsetsController$Stub;->hideInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 183
    goto :goto_91

    .line 168
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    sget-object p3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowInsetsController$Stub;->showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 173
    goto :goto_91

    .line 158
    :pswitch_58
    sget-object p1, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsState;

    .line 160
    sget-object p3, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/view/InsetsSourceControl;

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 163
    goto :goto_91

    .line 150
    :pswitch_6f
    sget-object p1, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsState;

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsChanged(Landroid/view/InsetsState;)V

    .line 153
    goto :goto_91

    .line 140
    :pswitch_7e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1, p3}, Landroid/view/IDisplayWindowInsetsController$Stub;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V

    .line 145
    nop

    .line 200
    :goto_91
    return v1

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_6f
        :pswitch_58
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
