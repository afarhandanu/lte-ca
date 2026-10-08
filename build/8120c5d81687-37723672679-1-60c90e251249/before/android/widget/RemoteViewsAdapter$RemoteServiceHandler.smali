.class Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;
.super Landroid/os/Handler;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteServiceHandler"
.end annotation


# instance fields
.field private final greylist-max-o mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBindRequested:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mNotifyDataSetChangedPending:Z

.field private greylist-max-o mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Looper;Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V
    .registers 4

    .line 200
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 197
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    .line 201
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 202
    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    .line 203
    return-void
.end method

.method private greylist-max-o enqueueDeferredUnbindServiceMessage()V
    .registers 4

    .line 367
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 368
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    return-void
.end method

.method private greylist-max-o sendNotifyDataSetChange(Z)Z
    .registers 4

    .line 356
    if-nez p1, :cond_a

    :try_start_2
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result p1

    if-nez p1, :cond_f

    .line 357
    :cond_a
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_f} :catch_11

    .line 359
    :cond_f
    const/4 p1, 0x1

    return p1

    .line 360
    :catch_11
    move-exception p1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteViewsAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 250
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .line 252
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_f0

    .line 344
    return-void

    .line 340
    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    .line 341
    return-void

    .line 321
    :pswitch_13
    if-eqz v0, :cond_37

    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-nez p1, :cond_1a

    goto :goto_37

    .line 324
    :cond_1a
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 326
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()I

    move-result p1

    .line 327
    const/4 v1, -0x1

    if-le p1, v1, :cond_33

    .line 329
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, v1, p1, v2}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    .line 332
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_36

    .line 335
    :cond_33
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 337
    :goto_36
    return-void

    .line 322
    :cond_37
    :goto_37
    return-void

    .line 274
    :pswitch_38
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 275
    if-nez v0, :cond_3e

    .line 276
    return-void

    .line 278
    :cond_3e
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-nez p1, :cond_48

    .line 279
    iput-boolean v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 280
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mrequestBindService(Landroid/widget/RemoteViewsAdapter;)V

    .line 281
    return-void

    .line 283
    :cond_48
    invoke-direct {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendNotifyDataSetChange(Z)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 284
    return-void

    .line 288
    :cond_4f
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    monitor-enter v1

    .line 289
    :try_start_54
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 290
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_9d

    .line 293
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, p1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V

    .line 296
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object p1

    monitor-enter p1

    .line 297
    :try_start_6a
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 298
    invoke-static {v0, v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mgetVisibleWindow(Landroid/widget/RemoteViewsAdapter;I)[I

    move-result-object v3

    .line 299
    monitor-exit p1
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_9a

    .line 304
    array-length p1, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_7c
    if-ge v5, p1, :cond_8a

    aget v6, v3, v5

    .line 308
    if-ge v6, v1, :cond_87

    .line 309
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, v7, v6, v4}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    .line 304
    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 314
    :cond_8a
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void

    .line 299
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit p1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0

    .line 290
    :catchall_9d
    move-exception v0

    move-object p1, v0

    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9d

    throw p1

    .line 254
    :pswitch_a1
    if-eqz v0, :cond_a7

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-eqz v0, :cond_aa

    .line 255
    :cond_a7
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 257
    :cond_aa
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    if-eqz v0, :cond_af

    .line 258
    return-void

    .line 260
    :cond_af
    nop

    .line 262
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    const v6, 0x2000001

    int-to-long v1, v6

    invoke-virtual {v0, p0, p0, v1, v2}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 263
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 264
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 266
    :try_start_c1
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual/range {v1 .. v6}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cf} :catch_d0

    .line 270
    goto :goto_ee

    .line 268
    :catch_d0
    move-exception v0

    move-object p1, v0

    .line 269
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind remoteViewsService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_38
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 245
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    .line 246
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 208
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 209
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 211
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViewsAdapter;

    .line 212
    if-nez p1, :cond_14

    .line 213
    return-void

    .line 216
    :cond_14
    iget-boolean p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    .line 217
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 218
    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 220
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 221
    goto :goto_43

    .line 222
    :cond_27
    invoke-direct {p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendNotifyDataSetChange(Z)Z

    move-result p2

    if-nez p2, :cond_2e

    .line 223
    return-void

    .line 228
    :cond_2e
    iget-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {p1, p2}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V

    .line 229
    invoke-static {p1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    invoke-static {p1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    :goto_43
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 236
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 237
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViewsAdapter;

    .line 238
    if-eqz p1, :cond_15

    .line 239
    invoke-static {p1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    :cond_15
    return-void
.end method

.method protected greylist-max-o unbindNow()V
    .registers 2

    .line 347
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    if-eqz v0, :cond_c

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    .line 349
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 351
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 352
    return-void
.end method
