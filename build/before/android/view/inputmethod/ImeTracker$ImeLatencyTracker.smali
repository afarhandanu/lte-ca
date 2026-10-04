.class public final Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeLatencyTracker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/ImeTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;-><init>()V

    return-void
.end method

.method private blacklist shouldMonitorLatency(I)Z
    .registers 4

    .line 1035
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x27

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 3

    .line 1094
    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    .line 1095
    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 1096
    return-void
.end method

.method public blacklist onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4

    .line 1082
    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    .line 1083
    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 1084
    return-void
.end method

.method public blacklist onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4

    .line 1071
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1072
    return-void
.end method

.method public blacklist onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 5

    .line 1057
    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 1058
    :cond_7
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    .line 1061
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object p2

    .line 1059
    const/16 p3, 0x15

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 1062
    return-void
.end method

.method public blacklist onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 5

    .line 1047
    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 1048
    :cond_7
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    .line 1051
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object p2

    .line 1049
    const/16 p3, 0x14

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 1052
    return-void
.end method

.method public blacklist onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4

    .line 1076
    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    .line 1077
    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 1078
    return-void
.end method

.method public blacklist onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4

    .line 1066
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1067
    return-void
.end method

.method public blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 3

    .line 1088
    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    .line 1089
    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 1090
    return-void
.end method
