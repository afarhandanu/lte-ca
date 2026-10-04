.class public abstract Landroid/view/accessibility/AccessibilityDisplayProxy;
.super Ljava/lang/Object;
.source "AccessibilityDisplayProxy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_CONNECTION_ID:I = -0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AccessibilityDisplayProxy"


# instance fields
.field private blacklist mConnectionId:I

.field private blacklist mDisplayId:I

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInstalledAndEnabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmConnectionId(Landroid/view/accessibility/AccessibilityDisplayProxy;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendServiceInfos(Landroid/view/accessibility/AccessibilityDisplayProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->sendServiceInfos()V

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/concurrent/Executor;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    .line 91
    iput p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mDisplayId:I

    .line 92
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    new-instance p1, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;

    const/4 p2, 0x0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p0, p2, v0}, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;-><init>(Landroid/view/accessibility/AccessibilityDisplayProxy;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 99
    iput-object p3, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 100
    return-void
.end method

.method private blacklist sendServiceInfos()V
    .registers 4

    .line 207
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 208
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_31

    if-eqz v0, :cond_31

    .line 211
    :try_start_17
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setInstalledAndEnabledServices(Ljava/util/List;)V

    .line 212
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_25} :catch_26

    .line 216
    goto :goto_31

    .line 213
    :catch_26
    move-exception v0

    .line 214
    const-string v1, "AccessibilityDisplayProxy"

    const-string v2, "Error while setting AccessibilityServiceInfos"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 218
    :cond_31
    :goto_31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 219
    return-void
.end method


# virtual methods
.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    .line 169
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    const/4 v2, -0x2

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mDisplayId:I

    return v0
.end method

.method public final whitelist getInstalledAndEnabledServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_1b

    .line 234
    :try_start_b
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    .line 235
    :catch_10
    move-exception v0

    .line 236
    const-string v1, "AccessibilityDisplayProxy"

    const-string v2, "Error while getting AccessibilityServiceInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 240
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWindows()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnDisplay(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist interrupt()V
    .registers 1

    .line 148
    return-void
.end method

.method public whitelist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 123
    return-void
.end method

.method public whitelist onProxyConnected()V
    .registers 1

    .line 135
    return-void
.end method

.method public whitelist setAccessibilityFocusAppearance(II)V
    .registers 4

    .line 252
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1a

    .line 255
    :try_start_b
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setFocusAppearance(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 260
    goto :goto_1a

    .line 256
    :catch_f
    move-exception p1

    .line 257
    const-string p2, "AccessibilityDisplayProxy"

    const-string v0, "Error while setting the strokeWidth and color of the accessibility focus rectangle"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 262
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist setInstalledAndEnabledServices(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 197
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->sendServiceInfos()V

    .line 198
    return-void
.end method
