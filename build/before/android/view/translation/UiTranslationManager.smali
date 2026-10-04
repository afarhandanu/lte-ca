.class public final Landroid/view/translation/UiTranslationManager;
.super Ljava/lang/Object;
.source "UiTranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;,
        Landroid/view/translation/UiTranslationManager$UiTranslationState;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist EXTRA_SOURCE_LOCALE:Ljava/lang/String; = "source_locale"

.field public static final blacklist EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final blacklist EXTRA_TARGET_LOCALE:Ljava/lang/String; = "target_locale"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "UiTranslation"

.field public static final blacklist STATE_UI_TRANSLATION_FINISHED:I = 0x3

.field public static final blacklist STATE_UI_TRANSLATION_PAUSED:I = 0x1

.field public static final blacklist STATE_UI_TRANSLATION_RESUMED:I = 0x2

.field public static final blacklist STATE_UI_TRANSLATION_STARTED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UiTranslationManager"


# instance fields
.field private final blacklist mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/translation/UiTranslationStateCallback;",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/view/translation/ITranslationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V
    .registers 4

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 161
    return-void
.end method


# virtual methods
.method public whitelist finishTranslation(Landroid/app/assist/ActivityId;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 229
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 233
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object p1, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 231
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_24
    move-exception v0

    move-object p1, v0

    .line 236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onTranslationFinished(ZLandroid/app/assist/ActivityId;Landroid/content/ComponentName;)V
    .registers 6

    .line 370
    :try_start_0
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-virtual {p2}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 370
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/view/translation/ITranslationManager;->onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 374
    nop

    .line 375
    return-void

    .line 372
    :catch_11
    move-exception p1

    .line 373
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist pauseTranslation(Landroid/app/assist/ActivityId;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 257
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object p1, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 255
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    .line 261
    nop

    .line 262
    return-void

    .line 259
    :catch_24
    move-exception v0

    move-object p1, v0

    .line 260
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerUiTranslationStateCallback(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    .registers 6

    .line 316
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 319
    :try_start_9
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 320
    const-string p1, "UiTranslationManager"

    const-string/jumbo p2, "registerUiTranslationStateCallback: callback already registered; ignoring."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_1b
    new-instance v1, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_39

    .line 327
    :try_start_20
    iget-object p1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/view/translation/ITranslationManager;->registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_33
    .catchall {:try_start_20 .. :try_end_2b} :catchall_39

    .line 330
    nop

    .line 331
    :try_start_2c
    iget-object p1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    monitor-exit v0

    .line 333
    return-void

    .line 328
    :catch_33
    move-exception p1

    .line 329
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 332
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public whitelist resumeTranslation(Landroid/app/assist/ActivityId;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 277
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 281
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object p1, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 279
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    .line 285
    nop

    .line 286
    return-void

    .line 283
    :catch_24
    move-exception v0

    move-object p1, v0

    .line 284
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/app/assist/ActivityId;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    new-instance v0, Landroid/view/translation/UiTranslationSpec$Builder;

    invoke-direct {v0}, Landroid/view/translation/UiTranslationSpec$Builder;-><init>()V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/translation/UiTranslationSpec$Builder;->setShouldPadContentForCompat(Z)Landroid/view/translation/UiTranslationSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/translation/UiTranslationSpec$Builder;->build()Landroid/view/translation/UiTranslationSpec;

    move-result-object v6

    .line 174
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/translation/UiTranslationManager;->startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;Landroid/view/translation/UiTranslationSpec;)V

    .line 177
    return-void
.end method

.method public whitelist startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;Landroid/view/translation/UiTranslationSpec;)V
    .registers 16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/app/assist/ActivityId;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 207
    :try_start_1c
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 208
    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object p4, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p4}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 207
    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p5

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_36

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_36
    move-exception v0

    move-object p1, v0

    .line 212
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 204
    :cond_3d
    move-object v5, p3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid empty views: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterUiTranslationStateCallback(Landroid/view/translation/UiTranslationStateCallback;)V
    .registers 6

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 344
    :try_start_6
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 345
    if-nez v1, :cond_1a

    .line 346
    const-string p1, "UiTranslationManager"

    const-string/jumbo v1, "unregisterUiTranslationStateCallback: callback not found; ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_33

    return-void

    .line 350
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_2d
    .catchall {:try_start_1a .. :try_end_25} :catchall_33

    .line 353
    nop

    .line 354
    :try_start_26
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 351
    :catch_2d
    move-exception p1

    .line 352
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 355
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_33

    throw p1
.end method
