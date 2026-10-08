.class public abstract Landroid/webkit/IWebViewUpdateService$Stub;
.super Landroid/os/Binder;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.webkit.IWebViewUpdateService"

.field static final greylist-max-o TRANSACTION_changeProviderAndSetting:I = 0x3

.field static final greylist-max-o TRANSACTION_getAllWebViewPackages:I = 0x5

.field static final greylist-max-o TRANSACTION_getCurrentWebViewPackage:I = 0x7

.field static final greylist-max-o TRANSACTION_getCurrentWebViewPackageName:I = 0x6

.field static final blacklist TRANSACTION_getDefaultWebViewPackage:I = 0x8

.field static final greylist-max-o TRANSACTION_getValidWebViewPackages:I = 0x4

.field static final greylist-max-o TRANSACTION_notifyRelroCreationCompleted:I = 0x1

.field static final greylist-max-o TRANSACTION_waitForAndGetProvider:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p0, p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;
    .registers 3

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    const-string v0, "android.webkit.IWebViewUpdateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/webkit/IWebViewUpdateService;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Landroid/webkit/IWebViewUpdateService;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 107
    packed-switch p0, :pswitch_data_20

    .line 143
    const/4 p0, 0x0

    return-object p0

    .line 139
    :pswitch_5
    const-string p0, "getDefaultWebViewPackage"

    return-object p0

    .line 135
    :pswitch_8
    const-string p0, "getCurrentWebViewPackage"

    return-object p0

    .line 131
    :pswitch_b
    const-string p0, "getCurrentWebViewPackageName"

    return-object p0

    .line 127
    :pswitch_e
    const-string p0, "getAllWebViewPackages"

    return-object p0

    .line 123
    :pswitch_11
    const-string p0, "getValidWebViewPackages"

    return-object p0

    .line 119
    :pswitch_14
    const-string p0, "changeProviderAndSetting"

    return-object p0

    .line 115
    :pswitch_17
    const-string/jumbo p0, "waitForAndGetProvider"

    return-object p0

    .line 111
    :pswitch_1b
    const-string/jumbo p0, "notifyRelroCreationCompleted"

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 413
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 150
    invoke-static {p1}, Landroid/webkit/IWebViewUpdateService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    nop

    .line 155
    const-string v0, "android.webkit.IWebViewUpdateService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_17
    packed-switch p1, :pswitch_data_7c

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 217
    :pswitch_1f
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    goto :goto_7a

    .line 210
    :pswitch_2a
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_7a

    .line 203
    :pswitch_35
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    goto :goto_7a

    .line 196
    :pswitch_40
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 199
    goto :goto_7a

    .line 189
    :pswitch_4b
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 192
    goto :goto_7a

    .line 180
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, p1}, Landroid/webkit/IWebViewUpdateService$Stub;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    goto :goto_7a

    .line 172
    :pswitch_68
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    goto :goto_7a

    .line 166
    :pswitch_73
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->notifyRelroCreationCompleted()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    nop

    .line 227
    :goto_7a
    return v1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_73
        :pswitch_68
        :pswitch_56
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
