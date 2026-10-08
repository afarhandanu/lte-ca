.class public Landroid/webkit/WebViewClient;
.super Ljava/lang/Object;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClient$SafeBrowsingThreat;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_AUTHENTICATION:I = -0x4

.field public static final whitelist ERROR_BAD_URL:I = -0xc

.field public static final whitelist ERROR_CONNECT:I = -0x6

.field public static final whitelist ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final whitelist ERROR_FILE:I = -0xd

.field public static final whitelist ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final whitelist ERROR_HOST_LOOKUP:I = -0x2

.field public static final whitelist ERROR_IO:I = -0x7

.field public static final whitelist ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final whitelist ERROR_REDIRECT_LOOP:I = -0x9

.field public static final whitelist ERROR_TIMEOUT:I = -0x8

.field public static final whitelist ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final whitelist ERROR_UNKNOWN:I = -0x1

.field public static final whitelist ERROR_UNSAFE_RESOURCE:I = -0x10

.field public static final whitelist ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final whitelist ERROR_UNSUPPORTED_SCHEME:I = -0xa

.field public static final whitelist SAFE_BROWSING_THREAT_BILLING:I = 0x4

.field public static final whitelist SAFE_BROWSING_THREAT_MALWARE:I = 0x1

.field public static final whitelist SAFE_BROWSING_THREAT_PHISHING:I = 0x2

.field public static final whitelist SAFE_BROWSING_THREAT_UNKNOWN:I = 0x0

.field public static final whitelist SAFE_BROWSING_THREAT_UNWANTED_SOFTWARE:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o onUnhandledInputEventInternal(Landroid/webkit/WebView;Landroid/view/InputEvent;)V
    .registers 3

    .line 545
    invoke-virtual {p1}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 546
    if-eqz p1, :cond_9

    .line 547
    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 549
    :cond_9
    return-void
.end method


# virtual methods
.method public whitelist doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4

    .line 393
    return-void
.end method

.method public whitelist onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4

    .line 381
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 382
    return-void
.end method

.method public whitelist onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 134
    return-void
.end method

.method public whitelist onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 164
    return-void
.end method

.method public whitelist onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 124
    return-void
.end method

.method public whitelist onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 110
    return-void
.end method

.method public whitelist onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 3

    .line 464
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 465
    return-void
.end method

.method public whitelist onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    return-void
.end method

.method public whitelist onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    .line 349
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 350
    nop

    .line 351
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 352
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 350
    invoke-virtual {p0, p1, v0, p3, p2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1e
    return-void
.end method

.method public whitelist onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 484
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 485
    return-void
.end method

.method public whitelist onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    .line 368
    return-void
.end method

.method public whitelist onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 574
    return-void
.end method

.method public whitelist onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .line 427
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 428
    return-void
.end method

.method public whitelist onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    .line 601
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .registers 5

    .line 622
    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Landroid/webkit/SafeBrowsingResponse;->showInterstitial(Z)V

    .line 623
    return-void
.end method

.method public whitelist onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 4

    .line 560
    return-void
.end method

.method public whitelist onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 258
    return-void
.end method

.method public greylist onUnhandledInputEvent(Landroid/webkit/WebView;Landroid/view/InputEvent;)V
    .registers 4

    .line 537
    instance-of v0, p2, Landroid/view/KeyEvent;

    if-eqz v0, :cond_a

    .line 538
    check-cast p2, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 539
    return-void

    .line 541
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledInputEventInternal(Landroid/webkit/WebView;Landroid/view/InputEvent;)V

    .line 542
    return-void
.end method

.method public whitelist onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 3

    .line 514
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledInputEventInternal(Landroid/webkit/WebView;Landroid/view/InputEvent;)V

    .line 515
    return-void
.end method

.method public whitelist shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 239
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public whitelist shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 500
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    .line 92
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    const/4 p1, 0x0

    return p1
.end method
