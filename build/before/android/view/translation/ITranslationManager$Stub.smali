.class public abstract Landroid/view/translation/ITranslationManager$Stub;
.super Landroid/os/Binder;
.source "ITranslationManager.java"

# interfaces
.implements Landroid/view/translation/ITranslationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ITranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/ITranslationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getServiceSettingsActivity:I = 0x8

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x4

.field static final blacklist TRANSACTION_onTranslationCapabilitiesRequest:I = 0x1

.field static final blacklist TRANSACTION_onTranslationFinished:I = 0x9

.field static final blacklist TRANSACTION_registerTranslationCapabilityCallback:I = 0x2

.field static final blacklist TRANSACTION_registerUiTranslationStateCallback:I = 0x6

.field static final blacklist TRANSACTION_unregisterTranslationCapabilityCallback:I = 0x3

.field static final blacklist TRANSACTION_unregisterUiTranslationStateCallback:I = 0x7

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.view.translation.ITranslationManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/translation/ITranslationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationManager;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    const-string v0, "android.view.translation.ITranslationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/translation/ITranslationManager;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Landroid/view/translation/ITranslationManager;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Landroid/view/translation/ITranslationManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/translation/ITranslationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 83
    packed-switch p0, :pswitch_data_28

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 119
    :pswitch_5
    const-string/jumbo p0, "onTranslationFinished"

    return-object p0

    .line 115
    :pswitch_9
    const-string p0, "getServiceSettingsActivity"

    return-object p0

    .line 111
    :pswitch_c
    const-string/jumbo p0, "unregisterUiTranslationStateCallback"

    return-object p0

    .line 107
    :pswitch_10
    const-string/jumbo p0, "registerUiTranslationStateCallback"

    return-object p0

    .line 103
    :pswitch_14
    const-string/jumbo p0, "updateUiTranslationState"

    return-object p0

    .line 99
    :pswitch_18
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    .line 95
    :pswitch_1c
    const-string/jumbo p0, "unregisterTranslationCapabilityCallback"

    return-object p0

    .line 91
    :pswitch_20
    const-string/jumbo p0, "registerTranslationCapabilityCallback"

    return-object p0

    .line 87
    :pswitch_24
    const-string/jumbo p0, "onTranslationCapabilitiesRequest"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 422
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {p1}, Landroid/view/translation/ITranslationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    nop

    .line 135
    const-string v0, "android.view.translation.ITranslationManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_17
    packed-switch p1, :pswitch_data_116

    .line 260
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 247
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    .line 251
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ComponentName;

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/view/translation/ITranslationManager$Stub;->onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 256
    goto/16 :goto_115

    .line 237
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1, p3}, Landroid/view/translation/ITranslationManager$Stub;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V

    .line 242
    goto/16 :goto_115

    .line 227
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1, p3}, Landroid/view/translation/ITranslationManager$Stub;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V

    .line 232
    goto/16 :goto_115

    .line 217
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1, p3}, Landroid/view/translation/ITranslationManager$Stub;->registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V

    .line 222
    goto/16 :goto_115

    .line 195
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    sget-object p1, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/translation/TranslationSpec;

    .line 199
    sget-object p1, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/view/translation/TranslationSpec;

    .line 201
    sget-object p1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 207
    sget-object p1, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/view/translation/UiTranslationSpec;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/view/translation/ITranslationManager$Stub;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V

    .line 212
    goto :goto_115

    .line 181
    :pswitch_b1
    move-object v2, p0

    sget-object p1, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/translation/TranslationContext;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p4

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/view/translation/ITranslationManager$Stub;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V

    .line 190
    goto :goto_115

    .line 171
    :pswitch_d1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1, p3}, Landroid/view/translation/ITranslationManager$Stub;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    .line 176
    goto :goto_115

    .line 161
    :pswitch_e5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1, p3}, Landroid/view/translation/ITranslationManager$Stub;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    .line 166
    goto :goto_115

    .line 147
    :pswitch_f9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 151
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ResultReceiver;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/view/translation/ITranslationManager$Stub;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V

    .line 156
    nop

    .line 263
    :goto_115
    return v1

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_e5
        :pswitch_d1
        :pswitch_b1
        :pswitch_78
        :pswitch_64
        :pswitch_50
        :pswitch_3c
        :pswitch_20
    .end packed-switch
.end method
