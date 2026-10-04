.class Landroid/view/translation/Translator$TranslationResponseCallbackImpl;
.super Landroid/service/translation/ITranslationCallback$Stub;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslationResponseCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$HWk6Hdg0GehGy4SCRxhVeQ-wPZE(Landroid/view/translation/Translator$TranslationResponseCallbackImpl;Landroid/view/translation/TranslationResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->lambda$onTranslationResponse$0(Landroid/view/translation/TranslationResponse;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Landroid/service/translation/ITranslationCallback$Stub;-><init>()V

    .line 398
    iput-object p1, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    .line 399
    iput-object p2, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 400
    return-void
.end method

.method private synthetic blacklist lambda$onTranslationResponse$0(Landroid/view/translation/TranslationResponse;)V
    .registers 3

    .line 408
    iget-object v0, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 405
    const-string v0, "Translator"

    const-string/jumbo v1, "onTranslationResponse called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_11
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/Translator$TranslationResponseCallbackImpl;Landroid/view/translation/TranslationResponse;)V

    .line 409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 411
    :try_start_1a
    iget-object p1, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_24

    .line 413
    invoke-static {v1, v2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->restoreCallingIdentity(J)V

    .line 414
    nop

    .line 415
    return-void

    .line 413
    :catchall_24
    move-exception p1

    invoke-static {v1, v2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->restoreCallingIdentity(J)V

    .line 414
    throw p1
.end method
