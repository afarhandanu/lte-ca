.class public abstract Landroid/window/ITaskOrganizer$Stub;
.super Landroid/os/Binder;
.source "ITaskOrganizer.java"

# interfaces
.implements Landroid/window/ITaskOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addStartingWindow:I = 0x1

.field static final blacklist TRANSACTION_copySplashScreenView:I = 0x3

.field static final blacklist TRANSACTION_onAppSplashScreenViewRemoved:I = 0x4

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x8

.field static final blacklist TRANSACTION_onImeDrawnOnTask:I = 0x9

.field static final blacklist TRANSACTION_onTaskAppeared:I = 0x5

.field static final blacklist TRANSACTION_onTaskInfoChanged:I = 0x7

.field static final blacklist TRANSACTION_onTaskVanished:I = 0x6

.field static final blacklist TRANSACTION_onTransitionReady:I = 0xa

.field static final blacklist TRANSACTION_removeStartingWindow:I = 0x2

.field static final blacklist TRANSACTION_requestStartTransition:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "android.window.ITaskOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;
    .registers 3

    .line 131
    if-nez p0, :cond_4

    .line 132
    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_4
    const-string v0, "android.window.ITaskOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_13

    .line 136
    check-cast v0, Landroid/window/ITaskOrganizer;

    return-object v0

    .line 138
    :cond_13
    new-instance v0, Landroid/window/ITaskOrganizer$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/ITaskOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 147
    packed-switch p0, :pswitch_data_30

    .line 195
    const/4 p0, 0x0

    return-object p0

    .line 191
    :pswitch_5
    const-string/jumbo p0, "requestStartTransition"

    return-object p0

    .line 187
    :pswitch_9
    const-string/jumbo p0, "onTransitionReady"

    return-object p0

    .line 183
    :pswitch_d
    const-string/jumbo p0, "onImeDrawnOnTask"

    return-object p0

    .line 179
    :pswitch_11
    const-string/jumbo p0, "onBackPressedOnTaskRoot"

    return-object p0

    .line 175
    :pswitch_15
    const-string/jumbo p0, "onTaskInfoChanged"

    return-object p0

    .line 171
    :pswitch_19
    const-string/jumbo p0, "onTaskVanished"

    return-object p0

    .line 167
    :pswitch_1d
    const-string/jumbo p0, "onTaskAppeared"

    return-object p0

    .line 163
    :pswitch_21
    const-string/jumbo p0, "onAppSplashScreenViewRemoved"

    return-object p0

    .line 159
    :pswitch_25
    const-string p0, "copySplashScreenView"

    return-object p0

    .line 155
    :pswitch_28
    const-string/jumbo p0, "removeStartingWindow"

    return-object p0

    .line 151
    :pswitch_2c
    const-string p0, "addStartingWindow"

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

    .line 142
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 547
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 202
    invoke-static {p1}, Landroid/window/ITaskOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 206
    nop

    .line 207
    const-string v0, "android.window.ITaskOrganizer"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 208
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 211
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return v1

    .line 214
    :cond_17
    packed-switch p1, :pswitch_data_dc

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 307
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 309
    sget-object p3, Landroid/window/TransitionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/TransitionRequestInfo;

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, p1, p3}, Landroid/window/ITaskOrganizer$Stub;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    .line 312
    goto/16 :goto_db

    .line 293
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 295
    sget-object p3, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/TransitionInfo;

    .line 297
    sget-object p4, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/SurfaceControl$Transaction;

    .line 299
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/window/ITaskOrganizer$Stub;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 302
    goto/16 :goto_db

    .line 285
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->onImeDrawnOnTask(I)V

    .line 288
    goto/16 :goto_db

    .line 277
    :pswitch_63
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 280
    goto :goto_db

    .line 269
    :pswitch_72
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 272
    goto :goto_db

    .line 261
    :pswitch_81
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 264
    goto :goto_db

    .line 251
    :pswitch_90
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 253
    sget-object p3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/SurfaceControl;

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, p1, p3}, Landroid/window/ITaskOrganizer$Stub;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 256
    goto :goto_db

    .line 243
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->onAppSplashScreenViewRemoved(I)V

    .line 246
    goto :goto_db

    .line 235
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->copySplashScreenView(I)V

    .line 238
    goto :goto_db

    .line 227
    :pswitch_bd
    sget-object p1, Landroid/window/StartingWindowRemovalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/StartingWindowRemovalInfo;

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    .line 230
    goto :goto_db

    .line 219
    :pswitch_cc
    sget-object p1, Landroid/window/StartingWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/StartingWindowInfo;

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1}, Landroid/window/ITaskOrganizer$Stub;->addStartingWindow(Landroid/window/StartingWindowInfo;)V

    .line 222
    nop

    .line 319
    :goto_db
    return v1

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_bd
        :pswitch_b2
        :pswitch_a7
        :pswitch_90
        :pswitch_81
        :pswitch_72
        :pswitch_63
        :pswitch_57
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
