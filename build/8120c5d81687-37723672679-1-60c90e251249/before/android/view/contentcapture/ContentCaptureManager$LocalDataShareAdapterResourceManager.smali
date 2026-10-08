.class Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;
.super Ljava/lang/Object;
.source "ContentCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDataShareAdapterResourceManager"
.end annotation


# instance fields
.field private blacklist mExecutorHardReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWriteAdapterHardReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;",
            "Landroid/view/contentcapture/DataShareWriteAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mWriteAdapterHardReferences:Ljava/util/Map;

    .line 1199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist clearHardReferences(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;)V
    .registers 3

    .line 1217
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mWriteAdapterHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    return-void
.end method

.method blacklist getAdapter(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;)Landroid/view/contentcapture/DataShareWriteAdapter;
    .registers 3

    .line 1213
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mWriteAdapterHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/contentcapture/DataShareWriteAdapter;

    return-object p1
.end method

.method blacklist getExecutor(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;)Ljava/util/concurrent/Executor;
    .registers 3

    .line 1209
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method blacklist initializeForDelegate(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;Landroid/view/contentcapture/DataShareWriteAdapter;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1204
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mWriteAdapterHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object p2, p0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    return-void
.end method
