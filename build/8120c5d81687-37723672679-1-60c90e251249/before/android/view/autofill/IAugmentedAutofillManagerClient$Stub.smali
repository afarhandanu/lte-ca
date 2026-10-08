.class public abstract Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAugmentedAutofillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAugmentedAutofillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAugmentedAutofillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_autofill:I = 0x3

.field static final blacklist TRANSACTION_getViewCoordinates:I = 0x1

.field static final blacklist TRANSACTION_getViewNodeParcelable:I = 0x2

.field static final blacklist TRANSACTION_requestAutofill:I = 0x6

.field static final blacklist TRANSACTION_requestHideFillUi:I = 0x5

.field static final blacklist TRANSACTION_requestShowFillUi:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAugmentedAutofillManagerClient;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/autofill/IAugmentedAutofillManagerClient;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/view/autofill/IAugmentedAutofillManagerClient;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_1a

    .line 115
    const/4 p0, 0x0

    return-object p0

    .line 111
    :pswitch_5
    const-string/jumbo p0, "requestAutofill"

    return-object p0

    .line 107
    :pswitch_9
    const-string/jumbo p0, "requestHideFillUi"

    return-object p0

    .line 103
    :pswitch_d
    const-string/jumbo p0, "requestShowFillUi"

    return-object p0

    .line 99
    :pswitch_11
    const-string p0, "autofill"

    return-object p0

    .line 95
    :pswitch_14
    const-string p0, "getViewNodeParcelable"

    return-object p0

    .line 91
    :pswitch_17
    const-string p0, "getViewCoordinates"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 363
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 122
    invoke-static {p1}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 126
    nop

    .line 127
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

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
    packed-switch p1, :pswitch_data_d2

    .line 215
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 204
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    sget-object p4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/autofill/AutofillId;

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, p1, p4}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestAutofill(ILandroid/view/autofill/AutofillId;)Z

    move-result p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    goto/16 :goto_d0

    .line 193
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    sget-object p4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/autofill/AutofillId;

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, p1, p4}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto/16 :goto_d0

    .line 174
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    sget-object p1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 182
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/graphics/Rect;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v8

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_d0

    .line 159
    :pswitch_83
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    sget-object p4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 163
    sget-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_d0

    .line 149
    :pswitch_a2
    move-object v2, p0

    sget-object p1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getViewNodeParcelable(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNodeParcelable;

    move-result-object p1

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    goto :goto_d0

    .line 139
    :pswitch_b9
    move-object v2, p0

    sget-object p1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getViewCoordinates(Landroid/view/autofill/AutofillId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    nop

    .line 218
    :goto_d0
    return v1

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_a2
        :pswitch_83
        :pswitch_52
        :pswitch_3b
        :pswitch_20
    .end packed-switch
.end method
