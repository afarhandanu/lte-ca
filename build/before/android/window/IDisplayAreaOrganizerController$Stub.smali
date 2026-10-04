.class public abstract Landroid/window/IDisplayAreaOrganizerController$Stub;
.super Landroid/os/Binder;
.source "IDisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/window/IDisplayAreaOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IDisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createTaskDisplayArea:I = 0x3

.field static final blacklist TRANSACTION_deleteTaskDisplayArea:I = 0x4

.field static final blacklist TRANSACTION_registerOrganizer:I = 0x1

.field static final blacklist TRANSACTION_unregisterOrganizer:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/IDisplayAreaOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizerController;
    .registers 3

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_4
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/IDisplayAreaOrganizerController;

    if-eqz v1, :cond_13

    .line 86
    check-cast v0, Landroid/window/IDisplayAreaOrganizerController;

    return-object v0

    .line 88
    :cond_13
    new-instance v0, Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 97
    packed-switch p0, :pswitch_data_14

    .line 117
    const/4 p0, 0x0

    return-object p0

    .line 113
    :pswitch_5
    const-string p0, "deleteTaskDisplayArea"

    return-object p0

    .line 109
    :pswitch_8
    const-string p0, "createTaskDisplayArea"

    return-object p0

    .line 105
    :pswitch_b
    const-string/jumbo p0, "unregisterOrganizer"

    return-object p0

    .line 101
    :pswitch_f
    const-string/jumbo p0, "registerOrganizer"

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 315
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 124
    invoke-static {p1}, Landroid/window/IDisplayAreaOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    nop

    .line 129
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_17
    packed-switch p1, :pswitch_data_80

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 178
    :pswitch_1f
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, p1}, Landroid/window/IDisplayAreaOrganizerController$Stub;->deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_7f

    .line 162
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/window/IDisplayAreaOrganizerController$Stub;->createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 173
    goto :goto_7f

    .line 153
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1}, Landroid/window/IDisplayAreaOrganizerController$Stub;->unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_7f

    .line 141
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1, p4}, Landroid/window/IDisplayAreaOrganizerController$Stub;->registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    nop

    .line 189
    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_65
        :pswitch_53
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
