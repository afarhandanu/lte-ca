.class Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;
.super Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishStateBinder"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$ycTIu2o9RaJe0xI_SWr8iIM6sj4(Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;Landroid/telephony/ims/PublishAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->lambda$onPublishUpdated$0(Landroid/telephony/ims/PublishAttributes;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .registers 3

    .line 420
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;-><init>()V

    .line 421
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 422
    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 423
    return-void
.end method

.method private synthetic blacklist lambda$onPublishUpdated$0(Landroid/telephony/ims/PublishAttributes;)V
    .registers 3

    .line 432
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;->onPublishStateChange(Landroid/telephony/ims/PublishAttributes;)V

    return-void
.end method


# virtual methods
.method public blacklist onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V
    .registers 6

    .line 427
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    if-nez v0, :cond_5

    return-void

    .line 429
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 431
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;Landroid/telephony/ims/PublishAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 434
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    .line 435
    nop

    .line 436
    return-void

    .line 434
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    .line 435
    throw p1
.end method
