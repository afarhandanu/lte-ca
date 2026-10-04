.class public final Landroid/view/selectiontoolbar/SelectionToolbarManager;
.super Ljava/lang/Object;
.source "SelectionToolbarManager.java"


# instance fields
.field private final blacklist mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;


# direct methods
.method public constructor blacklist <init>(Landroid/view/selectiontoolbar/ISelectionToolbarManager;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    .line 41
    return-void
.end method

.method private blacklist isRemoteSelectionToolbarEnabled()Z
    .registers 2

    .line 80
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->systemSelectionToolbarEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isRemoteSelectionToolbarEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 88
    const-class v0, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    .line 89
    if-eqz p0, :cond_f

    .line 90
    invoke-direct {p0}, Landroid/view/selectiontoolbar/SelectionToolbarManager;->isRemoteSelectionToolbarEnabled()Z

    move-result p0

    return p0

    .line 92
    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist dismissToolbar()V
    .registers 2

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    invoke-interface {v0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager;->dismissToolbar()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 76
    nop

    .line 77
    return-void

    .line 74
    :catch_7
    move-exception v0

    .line 75
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist hideToolbar()V
    .registers 2

    .line 62
    :try_start_0
    iget-object v0, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    invoke-interface {v0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager;->hideToolbar()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :catch_7
    move-exception v0

    .line 64
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .registers 4

    .line 49
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    invoke-interface {v0, p1, p2}, Landroid/view/selectiontoolbar/ISelectionToolbarManager;->showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 54
    nop

    .line 55
    return-void

    .line 52
    :catch_d
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
