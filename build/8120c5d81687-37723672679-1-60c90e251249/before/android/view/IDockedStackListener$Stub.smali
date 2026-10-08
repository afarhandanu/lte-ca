.class public abstract Landroid/view/IDockedStackListener$Stub;
.super Landroid/os/Binder;
.source "IDockedStackListener.java"

# interfaces
.implements Landroid/view/IDockedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDockedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDockedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IDockedStackListener"

.field static final greylist-max-o TRANSACTION_onAdjustedForImeChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onDividerVisibilityChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onDockSideChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onDockedStackExistsChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onDockedStackMinimizedChanged:I = 0x3


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.view.IDockedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDockedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;
    .registers 3

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    const-string v0, "android.view.IDockedStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IDockedStackListener;

    if-eqz v1, :cond_13

    .line 80
    check-cast v0, Landroid/view/IDockedStackListener;

    return-object v0

    .line 82
    :cond_13
    new-instance v0, Landroid/view/IDockedStackListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IDockedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 91
    packed-switch p0, :pswitch_data_1a

    .line 115
    const/4 p0, 0x0

    return-object p0

    .line 111
    :pswitch_5
    const-string/jumbo p0, "onDockSideChanged"

    return-object p0

    .line 107
    :pswitch_9
    const-string/jumbo p0, "onAdjustedForImeChanged"

    return-object p0

    .line 103
    :pswitch_d
    const-string/jumbo p0, "onDockedStackMinimizedChanged"

    return-object p0

    .line 99
    :pswitch_11
    const-string/jumbo p0, "onDockedStackExistsChanged"

    return-object p0

    .line 95
    :pswitch_15
    const-string/jumbo p0, "onDividerVisibilityChanged"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 297
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 122
    invoke-static {p1}, Landroid/view/IDockedStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 126
    nop

    .line 127
    const-string v0, "android.view.IDockedStackListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v1

    .line 134
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, p1}, Landroid/view/IDockedStackListener$Stub;->onDockSideChanged(I)V

    .line 180
    goto :goto_62

    .line 167
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1, p3, p4}, Landroid/view/IDockedStackListener$Stub;->onAdjustedForImeChanged(ZJ)V

    .line 172
    goto :goto_62

    .line 155
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/view/IDockedStackListener$Stub;->onDockedStackMinimizedChanged(ZJZ)V

    .line 162
    goto :goto_62

    .line 147
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/IDockedStackListener$Stub;->onDockedStackExistsChanged(Z)V

    .line 150
    goto :goto_62

    .line 139
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/IDockedStackListener$Stub;->onDividerVisibilityChanged(Z)V

    .line 142
    nop

    .line 187
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_57
        :pswitch_4c
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
