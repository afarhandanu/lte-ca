.class Landroid/telephony/TelephonyManager$20;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$5uz9tE3J37rsqN-GeNjtRjzJNUY(Landroid/telephony/TelephonyManager$20;Landroid/os/OutcomeReceiver;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager$20;->lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eX6S0OjPMHq26HtdrYeJ7KBySuM(Landroid/telephony/TelephonyManager$20;Landroid/os/OutcomeReceiver;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager$20;->lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 18417
    iput-object p1, p0, Landroid/telephony/TelephonyManager$20;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$20;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$20;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;I)V
    .registers 5

    .line 18421
    new-instance v0, Landroid/telephony/TelephonyManager$TimeoutException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$20;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$TimeoutException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;I)V
    .registers 5

    .line 18425
    new-instance v0, Landroid/telephony/TelephonyManager$ModemErrorException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$20;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$ModemErrorException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V
    .registers 2

    .line 18432
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 18420
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 18421
    iget-object p2, p0, Landroid/telephony/TelephonyManager$20;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$20;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$20$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyManager$20$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$20;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18423
    return-void

    .line 18424
    :cond_10
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    .line 18425
    iget-object p2, p0, Landroid/telephony/TelephonyManager$20;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$20;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$20$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyManager$20$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$20;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18427
    return-void

    .line 18430
    :cond_20
    const-class p1, Landroid/telephony/data/NetworkSlicingConfig;

    .line 18431
    const-string/jumbo v0, "slicing_config_handle"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/NetworkSlicingConfig;

    .line 18432
    iget-object p2, p0, Landroid/telephony/TelephonyManager$20;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$20;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$20$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Landroid/telephony/TelephonyManager$20$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18433
    return-void
.end method
