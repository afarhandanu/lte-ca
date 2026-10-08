.class Landroid/widget/DateTimeView$ReceiverInfo;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation


# instance fields
.field private final greylist-max-o mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/DateTimeView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mObserver:Landroid/database/ContentObserver;

.field private final greylist-max-o mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo$1;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 444
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo$2;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mObserver:Landroid/database/ContentObserver;

    .line 451
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/DateTimeView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>()V

    return-void
.end method

.method static final greylist-max-o getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 500
    if-eqz p0, :cond_7

    goto :goto_f

    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method static synthetic blacklist lambda$updateAll$0(Landroid/widget/DateTimeView;)V
    .registers 1

    .line 479
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->clearFormatAndUpdate()V

    return-void
.end method


# virtual methods
.method public greylist-max-o addView(Landroid/widget/DateTimeView;)V
    .registers 5

    .line 454
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 456
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    if-eqz v1, :cond_1b

    .line 458
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    .line 460
    :cond_1b
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method greylist-max-o getSoonestUpdateTime()J
    .registers 9

    .line 485
    nop

    .line 486
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 487
    :try_start_4
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 488
    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_26

    .line 489
    iget-object v5, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/DateTimeView;

    invoke-static {v5}, Landroid/widget/DateTimeView;->-$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J

    move-result-wide v5

    .line 490
    cmp-long v7, v5, v2

    if-gez v7, :cond_23

    .line 491
    move-wide v2, v5

    .line 488
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 494
    :cond_26
    monitor-exit v0

    .line 495
    return-wide v2

    .line 494
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method greylist-max-o register(Landroid/content/Context;)V
    .registers 6

    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 510
    return-void
.end method

.method public greylist-max-o removeView(Landroid/widget/DateTimeView;)V
    .registers 4

    .line 464
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 465
    :try_start_3
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 468
    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 469
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 471
    :cond_1e
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public greylist-max-o setHandler(Landroid/os/Handler;)V
    .registers 4

    .line 517
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    .line 518
    iget-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter p1

    .line 519
    :try_start_5
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 520
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    invoke-virtual {v0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 521
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    invoke-virtual {v0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    .line 523
    :cond_2c
    monitor-exit p1

    .line 524
    return-void

    .line 523
    :catchall_2e
    move-exception v0

    monitor-exit p1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method greylist-max-o unregister(Landroid/content/Context;)V
    .registers 3

    .line 513
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    return-void
.end method

.method greylist-max-o updateAll()V
    .registers 6

    .line 475
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 476
    :try_start_3
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 477
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1f

    .line 478
    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DateTimeView;

    .line 479
    new-instance v4, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;-><init>(Landroid/widget/DateTimeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/DateTimeView;->post(Ljava/lang/Runnable;)Z

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 481
    :cond_1f
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
