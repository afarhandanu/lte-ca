.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private final greylist-max-o mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private greylist-max-o mIsCreated:Z

.field private blacklist mIsDataUpdatePending:Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;)V
    .registers 2

    .line 182
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    .line 183
    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 184
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsDataUpdatePending:Z

    .line 185
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o getCount()I
    .registers 4

    monitor-enter p0

    .line 201
    nop

    .line 203
    :try_start_2
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_b
    .catchall {:try_start_2 .. :try_end_8} :catchall_9

    .line 207
    goto :goto_18

    .line 200
    :catchall_9
    move-exception v0

    goto :goto_1a

    .line 204
    :catch_b
    move-exception v0

    .line 205
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 206
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_9

    const/4 v0, 0x0

    .line 208
    :goto_18
    monitor-exit p0

    return v0

    .line 200
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist-max-o getItemId(I)J
    .registers 4

    monitor-enter p0

    .line 244
    nop

    .line 246
    :try_start_2
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_b
    .catchall {:try_start_2 .. :try_end_8} :catchall_9

    .line 250
    goto :goto_19

    .line 243
    :catchall_9
    move-exception p1

    goto :goto_1b

    .line 247
    :catch_b
    move-exception p1

    .line 248
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 249
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_9

    const-wide/16 v0, 0x0

    .line 251
    :goto_19
    monitor-exit p0

    return-wide v0

    .line 243
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_9

    throw p1
.end method

.method public declared-synchronized greylist-max-o getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    monitor-enter p0

    .line 224
    nop

    .line 226
    :try_start_2
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_b
    .catchall {:try_start_2 .. :try_end_8} :catchall_9

    .line 230
    goto :goto_18

    .line 223
    :catchall_9
    move-exception v0

    goto :goto_1a

    .line 227
    :catch_b
    move-exception v0

    .line 228
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 229
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_9

    const/4 v0, 0x0

    .line 231
    :goto_18
    monitor-exit p0

    return-object v0

    .line 223
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw v0
.end method

.method public blacklist getRemoteCollectionItems(IIZ)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 6

    .line 281
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 282
    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 284
    :try_start_9
    iget-boolean v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsDataUpdatePending:Z

    if-nez v1, :cond_f

    if-eqz p3, :cond_17

    .line 285
    :cond_f
    iget-object p3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {p3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V

    .line 286
    const/4 p3, 0x0

    iput-boolean p3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsDataUpdatePending:Z

    .line 288
    :cond_17
    iget-object p3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {p3, p1, p2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 292
    goto :goto_2a

    .line 289
    :catch_1e
    move-exception p1

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    .line 291
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 293
    :goto_2a
    return-object v0
.end method

.method public declared-synchronized greylist-max-o getViewAt(I)Landroid/widget/RemoteViews;
    .registers 5

    monitor-enter p0

    .line 211
    nop

    .line 213
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_f

    .line 215
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->addFlags(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    .line 220
    :cond_f
    goto :goto_1e

    .line 210
    :catchall_10
    move-exception p1

    goto :goto_20

    .line 217
    :catch_12
    move-exception p1

    .line 218
    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 219
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    .line 221
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 210
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_10

    throw p1
.end method

.method public declared-synchronized greylist-max-o getViewTypeCount()I
    .registers 4

    monitor-enter p0

    .line 234
    nop

    .line 236
    :try_start_2
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_b
    .catchall {:try_start_2 .. :try_end_8} :catchall_9

    .line 240
    goto :goto_18

    .line 233
    :catchall_9
    move-exception v0

    goto :goto_1a

    .line 237
    :catch_b
    move-exception v0

    .line 238
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 239
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_9

    const/4 v0, 0x0

    .line 241
    :goto_18
    monitor-exit p0

    return v0

    .line 233
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist-max-o hasStableIds()Z
    .registers 4

    monitor-enter p0

    .line 254
    nop

    .line 256
    :try_start_2
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_b
    .catchall {:try_start_2 .. :try_end_8} :catchall_9

    .line 260
    goto :goto_18

    .line 253
    :catchall_9
    move-exception v0

    goto :goto_1a

    .line 257
    :catch_b
    move-exception v0

    .line 258
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 259
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_9

    const/4 v0, 0x0

    .line 261
    :goto_18
    monitor-exit p0

    return v0

    .line 253
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist-max-o isCreated()Z
    .registers 2

    monitor-enter p0

    .line 187
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 187
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o onDataSetChanged()V
    .registers 4

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 195
    goto :goto_15

    .line 190
    :catchall_7
    move-exception v0

    goto :goto_17

    .line 192
    :catch_9
    move-exception v0

    .line 193
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 194
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_7

    .line 196
    :goto_15
    monitor-exit p0

    return-void

    .line 190
    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_7

    throw v0
.end method

.method public declared-synchronized greylist-max-o onDataSetChangedAsync()V
    .registers 2

    monitor-enter p0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 199
    monitor-exit p0

    return-void

    .line 197
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public greylist-max-o onDestroy(Landroid/content/Intent;)V
    .registers 5

    .line 265
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 266
    :try_start_5
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsFactoriesCache()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    .line 267
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_2a

    .line 268
    if-eqz p1, :cond_29

    .line 270
    :try_start_17
    iget-object p1, p1, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 274
    goto :goto_29

    .line 271
    :catch_1d
    move-exception p1

    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 273
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 276
    :cond_29
    :goto_29
    return-void

    .line 267
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method
