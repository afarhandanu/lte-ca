.class Landroid/telephony/ims/stub/ImsUtImplBase$1;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsUtImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mUtListener:Landroid/telephony/ims/ImsUtListener;

.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsUtImplBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$2K-3YuEDiqqgpPX-OF3WC76paAA(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)Ljava/lang/Integer;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallForward$10(IILjava/lang/String;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$32eqQlAiVyuXt34qAL8-akHlf5U(Landroid/telephony/ims/stub/ImsUtImplBase$1;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallForward$2(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$3LJhq5N9ekIFVt_oeITgKappFAc(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallBarring$9(II[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$7V9pkwnY6TNziYSD8ZzgBVyVGBY(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCLIR$12(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$7nKt3ZHzvZw3yyB5eAApcNcpNHo(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCOLR$6()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8BEuQpFFiVxM96R5ytk5LNWbd7M(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCLIP$5()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9kZ5_Kj1mtH2CPpeuIlzXOKWfSI(Landroid/telephony/ims/stub/ImsUtImplBase$1;Lcom/android/ims/internal/IImsUtListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$setListener$16(Lcom/android/ims/internal/IImsUtListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CGaDfSEx9vdLsV6AyTjbG3F5hfM(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCOLP$15(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$EG9DyUn5CryIN_c5TZ2mjtWyVkE(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallBarringForServiceClass$18(II[Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$J1DeUhNggZnO1xOCTizdEjIkciU(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCLIR$4()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JhYlQcqYcqG_iShx5x9YO6QYFTY(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallBarring$1(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$M7WXR3nicKFf5oZEmAfYgIOSqqc(Landroid/telephony/ims/stub/ImsUtImplBase$1;ZI)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallWaiting$11(ZI)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$TA3oupEHyNuzgXdxvcoInDHjgTI(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallWaiting$3()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$TJ6cH17ghhNxP-L9BWaxgaWpxT8(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCLIP$13(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$UPN7rxnTKRR-tgmAp2ackw53NqE(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCOLP$7()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ZtbMpY9Iv-ILFB6sXA7nIuEQuxY(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCOLR$14(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bIqTUf33J1IU3PjVgV_Vlhu6BUU(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$transact$8(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dGJJT6sOhrOrlFrtIX3DqCB_-7s(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$close$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sMCI9eyWA_HxI4p0JAUuh4eEDnA(Landroid/telephony/ims/stub/ImsUtImplBase$1;II)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallBarringForServiceClass$17(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$u5nBIgB7uUR9FTcxdc15xvEeujc(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallBarringWithPassword$19(II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 132
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_14

    .line 290
    nop

    .line 291
    return-void

    .line 286
    :catch_14
    move-exception p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsUtImplBase Binder - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 288
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 287
    const-string v0, "ImsUtImplBase"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance p2, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;-><init>(Ljava/util/function/Supplier;)V

    iget-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 298
    :try_start_f
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_13} :catch_14

    return-object p1

    .line 299
    :catch_14
    move-exception p1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsUtImplBase Binder - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 301
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 300
    const-string v0, "ImsUtImplBase"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance p2, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private synthetic blacklist lambda$close$0()V
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->close()V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$20(Ljava/lang/Runnable;)V
    .registers 1

    .line 285
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$21(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 1

    .line 296
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$queryCLIP$5()Ljava/lang/Integer;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCLIR$4()Ljava/lang/Integer;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCOLP$7()Ljava/lang/Integer;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCOLR$6()Ljava/lang/Integer;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCallBarring$1(I)Ljava/lang/Integer;
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarring(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$queryCallBarringForServiceClass$17(II)Ljava/lang/Integer;
    .registers 4

    .line 259
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    .line 260
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarringForServiceClass(II)I

    move-result p1

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$queryCallForward$2(ILjava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 148
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallForward(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$queryCallWaiting$3()Ljava/lang/Integer;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallWaiting()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setListener$16(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 6

    .line 231
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    const/4 v1, 0x0

    const-string v2, "ImsUtImplBase"

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    .line 232
    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 233
    const-string/jumbo v0, "setListener: discarding dead Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    .line 236
    :cond_1f
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    .line 237
    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 236
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 238
    return-void

    .line 241
    :cond_3a
    if-nez p1, :cond_3f

    .line 242
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_5a

    .line 243
    :cond_3f
    if-eqz p1, :cond_4d

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-nez v0, :cond_4d

    .line 244
    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_5a

    .line 247
    :cond_4d
    const-string/jumbo v0, "setListener is being called when there is already an active listener"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    .line 252
    :goto_5a
    iget-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->setListener(Landroid/telephony/ims/ImsUtListener;)V

    .line 253
    return-void
.end method

.method private synthetic blacklist lambda$transact$8(Landroid/os/Bundle;)Ljava/lang/Integer;
    .registers 3

    .line 180
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->transact(Landroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCLIP$13(Z)Ljava/lang/Integer;
    .registers 3

    .line 212
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIP(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCLIR$12(I)Ljava/lang/Integer;
    .registers 3

    .line 206
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIR(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCOLP$15(Z)Ljava/lang/Integer;
    .registers 3

    .line 224
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLP(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCOLR$14(I)Ljava/lang/Integer;
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLR(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCallBarring$9(II[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 187
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarring(II[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCallBarringForServiceClass$18(II[Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 6

    .line 267
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    .line 268
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result p1

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCallBarringWithPassword$19(II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 7

    .line 275
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    .line 276
    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCallForward$10(IILjava/lang/String;II)Ljava/lang/Integer;
    .registers 7

    .line 194
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallForward(IILjava/lang/String;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$updateCallWaiting$11(ZI)Ljava/lang/Integer;
    .registers 4

    .line 200
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallWaiting(ZI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public blacklist queryCLIP()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCLIR()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCOLP()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCOLR()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallBarring(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo p1, "queryCallBarring"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist queryCallBarringForServiceClass(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II)V

    const-string/jumbo p1, "queryCallBarringForServiceClass"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist queryCallForward(ILjava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ILjava/lang/String;)V

    const-string/jumbo p1, "queryCallForward"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist queryCallWaiting()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCallWaiting"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Lcom/android/ims/internal/IImsUtListener;)V

    const-string/jumbo p1, "setListener"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public blacklist transact(Landroid/os/Bundle;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)V

    const-string/jumbo p1, "transact"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCLIP(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo p1, "updateCLIP"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCLIR(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo p1, "updateCLIR"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCOLP(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo p1, "updateCOLP"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCOLR(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo p1, "updateCOLR"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCallBarring(II[Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;)V

    const-string/jumbo p1, "updateCallBarring"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;I)V

    const-string/jumbo p1, "updateCallBarringForServiceClass"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p1, "updateCallBarringWithPassword"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCallForward(IILjava/lang/String;II)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)V

    const-string/jumbo p1, "updateCallForward"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist updateCallWaiting(ZI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ZI)V

    const-string/jumbo p1, "updateCallWaiting"

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
