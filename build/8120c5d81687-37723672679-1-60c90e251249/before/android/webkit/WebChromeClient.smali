.class public Landroid/webkit/WebChromeClient;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebChromeClient$FileChooserParams;,
        Landroid/webkit/WebChromeClient$CustomViewCallback;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 520
    return-void
.end method

.method public whitelist onCloseWindow(Landroid/webkit/WebView;)V
    .registers 2

    .line 196
    return-void
.end method

.method public whitelist onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    return-void
.end method

.method public whitelist onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 4

    .line 486
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    .line 487
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p0, v0, v1, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 5

    .line 173
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 368
    return-void
.end method

.method public whitelist onGeolocationPermissionsHidePrompt()V
    .registers 1

    .line 422
    return-void
.end method

.method public whitelist onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 3

    .line 414
    return-void
.end method

.method public whitelist onHideCustomView()V
    .registers 1

    .line 129
    return-void
.end method

.method public whitelist onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 227
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 337
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 265
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    .line 302
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onJsTimeout()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 2

    .line 435
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 436
    return-void
.end method

.method public whitelist onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 2

    .line 444
    return-void
.end method

.method public whitelist onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 43
    return-void
.end method

.method public greylist onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    invoke-interface {p5, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 393
    return-void
.end method

.method public whitelist onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 57
    return-void
.end method

.method public whitelist onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 50
    return-void
.end method

.method public whitelist onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4

    .line 66
    return-void
.end method

.method public whitelist onRequestFocus(Landroid/webkit/WebView;)V
    .registers 2

    .line 182
    return-void
.end method

.method public whitelist onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    return-void
.end method

.method public whitelist onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    .line 103
    return-void
.end method

.method public whitelist onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 564
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 740
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 741
    return-void
.end method
