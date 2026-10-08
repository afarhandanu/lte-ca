.class public abstract Landroid/telephony/data/DataService$DataServiceProvider;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DataServiceProvider"
.end annotation


# instance fields
.field private final blacklist mApnUnthrottledCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDataCallListChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->registerForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->registerForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->unregisterForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->unregisterForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/data/DataService;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    .line 162
    iput p2, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    .line 163
    return-void
.end method

.method static synthetic blacklist lambda$notifyImsDataNetwork$3(Ljava/util/function/Consumer;)V
    .registers 2

    .line 552
    nop

    .line 553
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method static synthetic blacklist lambda$notifyUserDataEnabled$1(Ljava/util/function/Consumer;)V
    .registers 2

    .line 455
    nop

    .line 456
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method static synthetic blacklist lambda$notifyUserDataRoamingEnabled$2(Ljava/util/function/Consumer;)V
    .registers 2

    .line 479
    nop

    .line 480
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method static synthetic blacklist lambda$requestNetworkValidation$0(Ljava/util/function/Consumer;)V
    .registers 2

    .line 432
    nop

    .line 433
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method private blacklist registerForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    .line 388
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 389
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private greylist-max-o registerForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    .line 376
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist unregisterForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    .line 394
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 396
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private greylist-max-o unregisterForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    .line 382
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 383
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method


# virtual methods
.method public blacklist cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6

    .line 358
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelHandover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/telephony/data/DataServiceCallback;->onHandoverCancelled(I)V

    .line 362
    return-void
.end method

.method public abstract whitelist test-api close()V
.end method

.method public whitelist deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .registers 4

    .line 266
    if-eqz p3, :cond_6

    .line 267
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 269
    :cond_6
    return-void
.end method

.method public final whitelist getSlotIndex()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    return v0
.end method

.method public final whitelist notifyApnUnthrottled(Ljava/lang/String;)V
    .registers 9

    .line 505
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    .line 507
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    new-instance v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    invoke-direct {v5, p1, v2}, Landroid/telephony/data/DataService$ApnUnthrottledIndication;-><init>(Ljava/lang/String;Landroid/telephony/data/IDataServiceCallback;)V

    const/16 v2, 0x10

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 510
    goto :goto_9

    .line 511
    :cond_2d
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final whitelist notifyDataCallListChanged(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 491
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    .line 492
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    new-instance v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    invoke-direct {v5, p1, v2}, Landroid/telephony/data/DataService$DataCallListChangedIndication;-><init>(Ljava/util/List;Landroid/telephony/data/IDataServiceCallback;)V

    const/16 v2, 0xb

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 494
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 495
    goto :goto_9

    .line 496
    :cond_2d
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final whitelist notifyDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    .registers 9

    .line 520
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 521
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    .line 522
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    new-instance v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    invoke-direct {v5, p1, v2}, Landroid/telephony/data/DataService$ApnUnthrottledIndication;-><init>(Landroid/telephony/data/DataProfile;Landroid/telephony/data/IDataServiceCallback;)V

    const/16 v2, 0x10

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 525
    goto :goto_9

    .line 526
    :cond_2d
    monitor-exit v0

    .line 527
    return-void

    .line 526
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public blacklist notifyImsDataNetwork(IIIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 549
    const-string p1, "executor cannot be null"

    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 550
    const-string/jumbo p1, "resultCodeCallback cannot be null"

    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    new-instance p1, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p6}, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p5, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 554
    return-void
.end method

.method public blacklist notifyUserDataEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 450
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v0, "resultCodeCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUserDataEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance p1, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public blacklist notifyUserDataRoamingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 474
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 475
    const-string/jumbo v0, "resultCodeCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUserDataRoamingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance p1, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method public whitelist requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .registers 4

    .line 371
    const/4 v0, 0x1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 373
    return-void
.end method

.method public whitelist requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 426
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v0, "resultCodeCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNetworkValidation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance p1, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public whitelist setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/DataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 299
    if-eqz p3, :cond_6

    .line 300
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    .line 302
    :cond_6
    return-void
.end method

.method public whitelist setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 4

    .line 281
    if-eqz p3, :cond_6

    .line 282
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    .line 285
    :cond_6
    return-void
.end method

.method public whitelist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 12

    .line 246
    move-object p7, p6

    move-object p8, p11

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p8}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V

    .line 248
    return-void
.end method

.method public whitelist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V
    .registers 8

    .line 194
    if-eqz p7, :cond_7

    .line 195
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p7, p1, p2}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 198
    :cond_7
    return-void
.end method

.method public blacklist startHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6

    .line 327
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/telephony/data/DataServiceCallback;->onHandoverStarted(I)V

    .line 331
    return-void
.end method
