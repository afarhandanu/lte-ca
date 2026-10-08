.class public final Landroid/webkit/WebViewUpdateManager;
.super Ljava/lang/Object;
.source "WebViewUpdateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mService:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method public constructor blacklist <init>(Landroid/webkit/IWebViewUpdateService;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    .line 41
    return-void
.end method

.method public static blacklist getInstance()Landroid/webkit/WebViewUpdateManager;
    .registers 2

    .line 55
    nop

    .line 56
    const-string/jumbo v0, "webviewupdate"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->getSystemServiceWithNoContext(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewUpdateManager;

    .line 58
    if-eqz v0, :cond_d

    .line 61
    return-object v0

    .line 59
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "WebView not supported by device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0, p1}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 154
    :catch_7
    move-exception p1

    .line 155
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 103
    :catch_7
    move-exception v0

    .line 104
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 88
    :catch_7
    move-exception v0

    .line 89
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getCurrentWebViewPackageName()Ljava/lang/String;
    .registers 2

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 136
    :catch_7
    move-exception v0

    .line 137
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 182
    :catch_7
    move-exception v0

    .line 183
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 123
    :catch_7
    move-exception v0

    .line 124
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist notifyRelroCreationCompleted()V
    .registers 2

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 168
    nop

    .line 169
    return-void

    .line 166
    :catch_7
    move-exception v0

    .line 167
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 2

    .line 74
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 75
    :catch_7
    move-exception v0

    .line 76
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
