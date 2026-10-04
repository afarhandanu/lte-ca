.class Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "UiTranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/UiTranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiTranslationStateRemoteCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/view/translation/UiTranslationStateCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSourceLocale:Landroid/icu/util/ULocale;

.field private blacklist mTargetLocale:Landroid/icu/util/ULocale;


# direct methods
.method public static synthetic blacklist $r8$lambda$TnZvfrQw24ZwsxzacSUl_MUXu8E(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->lambda$sendResult$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uLt4dwnSnD_79JYexCexMjSzKNI(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->lambda$sendResult$1(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    .registers 3

    .line 388
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 389
    iput-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 390
    iput-object p2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    .line 391
    return-void
.end method

.method private synthetic blacklist lambda$sendResult$0(Landroid/os/Bundle;)V
    .registers 2

    .line 395
    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->onStateChange(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendResult$1(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist onStateChange(Landroid/os/Bundle;)V
    .registers 5

    .line 399
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 400
    const-string/jumbo v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    packed-switch v0, :pswitch_data_66

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected translation state:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UiTranslationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 414
    :pswitch_2a
    iget-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    invoke-interface {p1, v1}, Landroid/view/translation/UiTranslationStateCallback;->onFinished(Ljava/lang/String;)V

    .line 415
    goto :goto_64

    .line 408
    :pswitch_30
    iget-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mTargetLocale:Landroid/icu/util/ULocale;

    invoke-interface {p1, v0, v2, v1}, Landroid/view/translation/UiTranslationStateCallback;->onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 409
    goto :goto_64

    .line 411
    :pswitch_3a
    iget-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    invoke-interface {p1, v1}, Landroid/view/translation/UiTranslationStateCallback;->onPaused(Ljava/lang/String;)V

    .line 412
    goto :goto_64

    .line 403
    :pswitch_40
    const-string/jumbo v0, "source_locale"

    const-class v2, Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    .line 404
    const-string/jumbo v0, "target_locale"

    const-class v2, Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Landroid/icu/util/ULocale;

    iput-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mTargetLocale:Landroid/icu/util/ULocale;

    .line 405
    iget-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mTargetLocale:Landroid/icu/util/ULocale;

    invoke-interface {p1, v0, v2, v1}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 406
    nop

    .line 419
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3a
        :pswitch_30
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 3

    .line 395
    new-instance v0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 396
    return-void
.end method
