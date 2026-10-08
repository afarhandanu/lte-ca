.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private blacklist mIsFromTransactionItem:Z

.field private final greylist-max-o mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    .line 11872
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 11873
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 11874
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iput-object p1, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    .line 11875
    return-void
.end method

.method private static greylist-max-o checkCallingPermission(Ljava/lang/String;)I
    .registers 4

    .line 12003
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 12004
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 12003
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    .line 12005
    :catch_11
    move-exception p0

    .line 12006
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic blacklist lambda$dumpWindow$0(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V
    .registers 6

    .line 12099
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 12101
    :try_start_4
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 12102
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 12103
    const-string v2, ""

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 12104
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_22

    .line 12106
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 12107
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 12108
    nop

    .line 12109
    return-void

    .line 12106
    :catchall_22
    move-exception p1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 12107
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 12108
    throw p1
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .registers 3

    .line 12044
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12045
    if-eqz v0, :cond_d

    .line 12046
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    .line 12048
    :cond_d
    return-void
.end method

.method public blacklist dispatchAppVisibility(ZI)V
    .registers 4

    .line 11987
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11988
    if-eqz v0, :cond_d

    .line 11989
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(ZI)V

    .line 11991
    :cond_d
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 3

    .line 12062
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12063
    if-eqz v0, :cond_d

    .line 12064
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 12066
    :cond_d
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .registers 2

    .line 11995
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11996
    if-eqz v0, :cond_d

    .line 11997
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    .line 11999
    :cond_d
    return-void
.end method

.method public blacklist dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 6

    .line 12057
    return-void
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFF)V
    .registers 6

    .line 12053
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .registers 2

    .line 12070
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12071
    if-eqz v0, :cond_d

    .line 12072
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchWindowShown()V

    .line 12074
    :cond_d
    return-void
.end method

.method public blacklist dumpWindow(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 12094
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12095
    if-nez v0, :cond_b

    .line 12096
    return-void

    .line 12098
    :cond_b
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v2, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 12110
    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 7

    .line 12012
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12013
    if-eqz v0, :cond_72

    .line 12014
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 12015
    if-eqz v0, :cond_72

    .line 12016
    const-string v1, "android.permission.DUMP"

    invoke-static {v1}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_47

    .line 12023
    nop

    .line 12025
    const/4 v1, 0x0

    :try_start_18
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_2d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2b

    .line 12026
    :try_start_1d
    invoke-static {v0, p1, p2, v2}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_28
    .catchall {:try_start_1d .. :try_end_20} :catchall_25

    .line 12030
    nop

    .line 12032
    :try_start_21
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_37

    goto :goto_36

    .line 12030
    :catchall_25
    move-exception p1

    move-object v1, v2

    goto :goto_3c

    .line 12027
    :catch_28
    move-exception p1

    move-object v1, v2

    goto :goto_2e

    .line 12030
    :catchall_2b
    move-exception p1

    goto :goto_3c

    .line 12027
    :catch_2d
    move-exception p1

    .line 12028
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    .line 12030
    if-eqz v1, :cond_72

    .line 12032
    :try_start_33
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 12035
    :goto_36
    goto :goto_72

    .line 12033
    :catch_37
    move-exception p1

    .line 12034
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 12030
    :goto_3c
    if-eqz v1, :cond_46

    .line 12032
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 12035
    goto :goto_46

    .line 12033
    :catch_42
    move-exception p2

    .line 12034
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 12037
    :cond_46
    :goto_46
    throw p1

    .line 12018
    :cond_47
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12019
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12020
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12040
    :cond_72
    :goto_72
    return-void
.end method

.method public blacklist hideInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6

    .line 11968
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11969
    const/16 v1, 0x1d

    if-eqz v0, :cond_17

    .line 11970
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11971
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mhideInsets(Landroid/view/ViewRootImpl;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1e

    .line 11973
    :cond_17
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11975
    :goto_1e
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 10

    .line 11921
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11922
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11923
    iget-object v2, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 11924
    if-nez v2, :cond_15

    .line 11925
    if-eqz v0, :cond_14

    .line 11926
    invoke-virtual {p2}, Landroid/view/InsetsSourceControl$Array;->release()V

    .line 11928
    :cond_14
    return-void

    .line 11930
    :cond_15
    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 11931
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    .line 11933
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 11931
    const-string v5, "ViewRootImpl#dispatchInsetsControlChanged"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11938
    :cond_37
    if-eqz v0, :cond_49

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mLooper:Landroid/os/Looper;

    .line 11939
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_49

    .line 11940
    invoke-virtual {v2, p1, p2}, Landroid/view/ViewRootImpl;->handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 11941
    return-void

    .line 11944
    :cond_49
    const/4 v3, 0x1

    if-nez v0, :cond_58

    .line 11945
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v0, v4, :cond_58

    move v1, v3

    goto :goto_59

    :cond_58
    nop

    .line 11946
    :goto_59
    if-eqz v1, :cond_67

    .line 11947
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0, p1, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 11948
    new-instance p1, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {p1, p2, v3}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/view/InsetsSourceControl$Array;Z)V

    move-object p2, p1

    move-object p1, v0

    .line 11952
    :cond_67
    invoke-static {v2, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 11953
    return-void
.end method

.method public greylist-max-o moved(II)V
    .registers 4

    .line 11979
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11980
    if-eqz v0, :cond_d

    .line 11981
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMoved(II)V

    .line 11983
    :cond_d
    return-void
.end method

.method public blacklist onExecutingWindowStateTransactionItem()V
    .registers 2

    .line 11879
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11880
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 4

    .line 12078
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12079
    if-eqz v0, :cond_d

    .line 12080
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 12082
    :cond_d
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 3

    .line 12086
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12087
    if-eqz v0, :cond_d

    .line 12088
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 12090
    :cond_d
    return-void
.end method

.method public blacklist resized(Landroid/view/WindowRelayoutResult;ZZIZZ)V
    .registers 22

    .line 11885
    move-object/from16 v0, p1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11886
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11889
    iget-object v3, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 11890
    if-nez v4, :cond_13

    .line 11891
    return-void

    .line 11893
    :cond_13
    iget-object v3, v0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 11894
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    .line 11895
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 11894
    const-string v6, "ViewRootImpl.W#resized"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v5, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11900
    :cond_37
    if-eqz v1, :cond_5d

    iget-object v3, v4, Landroid/view/ViewRootImpl;->mLooper:Landroid/os/Looper;

    .line 11901
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v3, v5, :cond_5d

    .line 11902
    iget-object v5, v0, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget-object v7, v0, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v8, v0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    iget v11, v0, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iget-object v14, v0, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    move/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-static/range {v4 .. v14}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZIIZZLandroid/window/ActivityWindowInfo;)V

    .line 11905
    return-void

    .line 11908
    :cond_5d
    if-nez v1, :cond_6b

    .line 11909
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v1, v3, :cond_6b

    const/4 v2, 0x1

    goto :goto_6c

    :cond_6b
    nop

    .line 11910
    :goto_6c
    if-eqz v2, :cond_75

    .line 11911
    new-instance v1, Landroid/view/WindowRelayoutResult;

    invoke-direct {v1, v0}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/view/WindowRelayoutResult;)V

    move-object v5, v1

    goto :goto_76

    .line 11910
    :cond_75
    move-object v5, v0

    .line 11913
    :goto_76
    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchResized(Landroid/view/ViewRootImpl;Landroid/view/WindowRelayoutResult;ZZIZZ)V

    .line 11915
    return-void
.end method

.method public blacklist showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6

    .line 11957
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11958
    const/16 v1, 0x1c

    if-eqz v0, :cond_17

    .line 11959
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11960
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mshowInsets(Landroid/view/ViewRootImpl;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1e

    .line 11962
    :cond_17
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11964
    :goto_1e
    return-void
.end method
