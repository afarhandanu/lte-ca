.class public abstract Landroid/window/ITaskOrganizerController$Stub;
.super Landroid/os/Binder;
.source "ITaskOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearExcludeLayersFromTaskSnapshot:I = 0xa

.field static final blacklist TRANSACTION_createRootTask:I = 0x3

.field static final blacklist TRANSACTION_deleteRootTask:I = 0x4

.field static final blacklist TRANSACTION_getChildTasks:I = 0x5

.field static final blacklist TRANSACTION_getImeLayeringTarget:I = 0x7

.field static final blacklist TRANSACTION_getRootTasks:I = 0x6

.field static final blacklist TRANSACTION_registerTaskOrganizer:I = 0x1

.field static final blacklist TRANSACTION_restartTaskTopActivityProcessIfVisible:I = 0x8

.field static final blacklist TRANSACTION_setExcludeLayersFromTaskSnapshot:I = 0x9

.field static final blacklist TRANSACTION_unregisterTaskOrganizer:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizerController;
    .registers 3

    .line 100
    if-nez p0, :cond_4

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_4
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/ITaskOrganizerController;

    if-eqz v1, :cond_13

    .line 105
    check-cast v0, Landroid/window/ITaskOrganizerController;

    return-object v0

    .line 107
    :cond_13
    new-instance v0, Landroid/window/ITaskOrganizerController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 116
    packed-switch p0, :pswitch_data_28

    .line 160
    const/4 p0, 0x0

    return-object p0

    .line 156
    :pswitch_5
    const-string p0, "clearExcludeLayersFromTaskSnapshot"

    return-object p0

    .line 152
    :pswitch_8
    const-string/jumbo p0, "setExcludeLayersFromTaskSnapshot"

    return-object p0

    .line 148
    :pswitch_c
    const-string/jumbo p0, "restartTaskTopActivityProcessIfVisible"

    return-object p0

    .line 144
    :pswitch_10
    const-string p0, "getImeLayeringTarget"

    return-object p0

    .line 140
    :pswitch_13
    const-string p0, "getRootTasks"

    return-object p0

    .line 136
    :pswitch_16
    const-string p0, "getChildTasks"

    return-object p0

    .line 132
    :pswitch_19
    const-string p0, "deleteRootTask"

    return-object p0

    .line 128
    :pswitch_1c
    const-string p0, "createRootTask"

    return-object p0

    .line 124
    :pswitch_1f
    const-string/jumbo p0, "unregisterTaskOrganizer"

    return-object p0

    .line 120
    :pswitch_23
    const-string/jumbo p0, "registerTaskOrganizer"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
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

    .line 111
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 530
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 167
    invoke-static {p1}, Landroid/window/ITaskOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    nop

    .line 172
    const-string v0, "android.window.ITaskOrganizerController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 173
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 176
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    return v1

    .line 179
    :cond_17
    packed-switch p1, :pswitch_data_10a

    .line 294
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 286
    :pswitch_20
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizerController$Stub;->clearExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_108

    .line 275
    :pswitch_33
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    .line 277
    sget-object p4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/view/SurfaceControl;

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1, p4}, Landroid/window/ITaskOrganizerController$Stub;->setExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;[Landroid/view/SurfaceControl;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_108

    .line 266
    :pswitch_4e
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizerController$Stub;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto/16 :goto_108

    .line 256
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizerController$Stub;->getImeLayeringTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 261
    goto/16 :goto_108

    .line 244
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, p1, p4}, Landroid/window/ITaskOrganizerController$Stub;->getRootTasks(I[I)Ljava/util/List;

    move-result-object p1

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 251
    goto/16 :goto_108

    .line 232
    :pswitch_8b
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, p1, p4}, Landroid/window/ITaskOrganizerController$Stub;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object p1

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 239
    goto :goto_108

    .line 222
    :pswitch_a5
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizerController$Stub;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto :goto_108

    .line 203
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/window/ITaskOrganizerController$Stub;->createRootTask(IILandroid/os/IBinder;ZZLjava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_108

    .line 194
    :pswitch_de
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizerController$Stub;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_108

    .line 184
    :pswitch_f1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizerController$Stub;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    nop

    .line 297
    :goto_108
    return v1

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_f1
        :pswitch_de
        :pswitch_bb
        :pswitch_a5
        :pswitch_8b
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
