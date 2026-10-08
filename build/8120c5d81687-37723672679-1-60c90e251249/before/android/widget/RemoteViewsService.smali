.class public abstract Landroid/widget/RemoteViewsService;
.super Landroid/app/Service;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;,
        Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RemoteViewsService"

.field private static final blacklist sFactoriesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsFactoriesCache()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sFactoriesCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sFactoriesCache:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 303
    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 305
    sget-object v2, Landroid/widget/RemoteViewsService;->sFactoriesCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    .line 306
    if-nez v2, :cond_23

    .line 307
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsService;->onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object p1

    .line 308
    invoke-interface {p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onCreate()V

    .line 309
    new-instance v2, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;-><init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;)V

    .line 310
    sget-object p1, Landroid/widget/RemoteViewsService;->sFactoriesCache:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_23
    monitor-exit v0

    return-object v2

    .line 313
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public abstract whitelist onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.end method
