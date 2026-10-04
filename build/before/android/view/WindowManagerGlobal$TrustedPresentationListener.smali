.class final Landroid/view/WindowManagerGlobal$TrustedPresentationListener;
.super Landroid/window/ITrustedPresentationListener$Stub;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustedPresentationListener"
.end annotation


# static fields
.field private static blacklist sId:I


# instance fields
.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTplLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->addListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->removeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1012
    const/4 v0, 0x0

    sput v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->sId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/WindowManagerGlobal;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1010
    invoke-direct {p0}, Landroid/window/ITrustedPresentationListener$Stub;-><init>()V

    .line 1013
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    .line 1016
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/WindowManagerGlobal;Landroid/view/WindowManagerGlobal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;-><init>(Landroid/view/WindowManagerGlobal;)V

    return-void
.end method

.method private blacklist addListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1022
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thresholds to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {p0, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->removeListener(Ljava/util/function/Consumer;)V

    .line 1025
    :cond_30
    sget v1, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->sId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->sId:I

    .line 1026
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_52

    .line 1028
    :try_start_44
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p3

    .line 1029
    invoke-interface {p3, p1, p0, p2, v1}, Landroid/view/IWindowManager;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_4c
    .catchall {:try_start_44 .. :try_end_4b} :catchall_52

    .line 1032
    goto :goto_50

    .line 1030
    :catch_4c
    move-exception p1

    .line 1031
    :try_start_4d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1033
    :goto_50
    monitor-exit v0

    .line 1034
    return-void

    .line 1033
    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw p1
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$0(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1064
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1063
    new-instance v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$2(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1070
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1069
    new-instance v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$4([ILjava/util/ArrayList;[ILjava/util/function/Consumer;Landroid/util/Pair;)V
    .registers 11

    .line 1059
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1060
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/util/concurrent/Executor;

    .line 1061
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_20

    aget v4, p0, v3

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1d

    .line 1063
    new-instance v4, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda1;

    invoke-direct {v4, p4, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1067
    :cond_20
    array-length p0, p2

    :goto_21
    if-ge v2, p0, :cond_36

    aget v1, p2, v2

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_33

    .line 1069
    new-instance v1, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p4, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1073
    :cond_36
    return-void
.end method

.method private blacklist removeListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1039
    if-nez v1, :cond_2d

    .line 1040
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " does not exist."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_43

    return-void

    .line 1045
    :cond_2d
    :try_start_2d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1046
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, p0, v1}, Landroid/view/IWindowManager;->unregisterTrustedPresentationListener(Landroid/window/ITrustedPresentationListener;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3c} :catch_3d
    .catchall {:try_start_2d .. :try_end_3c} :catchall_43

    .line 1049
    goto :goto_41

    .line 1047
    :catch_3d
    move-exception p1

    .line 1048
    :try_start_3e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1050
    :goto_41
    monitor-exit v0

    .line 1051
    return-void

    .line 1050
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_43

    throw p1
.end method


# virtual methods
.method public blacklist onTrustedPresentationChanged([I[I)V
    .registers 7

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1058
    :try_start_8
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0, p2}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;-><init>([ILjava/util/ArrayList;[I)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1074
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_27

    .line 1075
    const/4 p1, 0x0

    :goto_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_26

    .line 1076
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1075
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 1078
    :cond_26
    return-void

    .line 1074
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method
