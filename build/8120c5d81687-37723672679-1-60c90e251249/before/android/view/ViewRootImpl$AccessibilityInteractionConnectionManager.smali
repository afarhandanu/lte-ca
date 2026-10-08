.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionConnectionManager"
.end annotation


# instance fields
.field private blacklist mDirectConnectionId:I

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 12235
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12237
    const/4 p1, -0x1

    iput p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    return-void
.end method


# virtual methods
.method public greylist-max-o ensureConnection()V
    .registers 8

    .line 12262
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 12264
    :goto_c
    if-nez v0, :cond_33

    .line 12265
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 12268
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v5, v6}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    .line 12266
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I

    move-result v1

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 12271
    :cond_33
    return-void
.end method

.method public blacklist ensureDirectConnection()I
    .registers 3

    .line 12284
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 12285
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addDirectConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;Landroid/view/accessibility/AccessibilityManager;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    .line 12289
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 12291
    :cond_1d
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    return v0
.end method

.method public greylist-max-o ensureNoConnection()V
    .registers 3

    .line 12274
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 12276
    :goto_c
    if-eqz v0, :cond_25

    .line 12277
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 12278
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmAccessibilityWindowAttributes(Landroid/view/ViewRootImpl;Landroid/view/accessibility/AccessibilityWindowAttributes;)V

    .line 12279
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 12281
    :cond_25
    return-void
.end method

.method public blacklist ensureNoDirectConnection()V
    .registers 3

    .line 12295
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 12296
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    .line 12297
    iput v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    .line 12299
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 12301
    :cond_13
    return-void
.end method

.method public whitelist onAccessibilityStateChanged(Z)V
    .registers 4

    .line 12241
    if-eqz p1, :cond_50

    .line 12242
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 12243
    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$msetAccessibilityWindowAttributesIfNeeded(Landroid/view/ViewRootImpl;)V

    .line 12244
    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean p1, p1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz p1, :cond_36

    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_36

    .line 12245
    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 12246
    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 12247
    if-eqz p1, :cond_36

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_36

    .line 12248
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 12251
    :cond_36
    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    if-eqz p1, :cond_60

    .line 12252
    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto :goto_60

    .line 12256
    :cond_50
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 12257
    iget-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 12259
    :cond_60
    :goto_60
    return-void
.end method
