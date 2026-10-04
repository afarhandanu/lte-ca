.class Landroid/telephony/satellite/SatelliteManager$2;
.super Landroid/os/ResultReceiver;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->requestIsEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 983
    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 991
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Z)V
    .registers 3

    .line 990
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 995
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$3(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 994
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$4(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1000
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$5(Landroid/os/OutcomeReceiver;I)V
    .registers 3

    .line 999
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 986
    if-nez p1, :cond_2f

    .line 987
    const-string/jumbo p1, "satellite_enabled"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 988
    nop

    .line 989
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 990
    iget-object p2, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Z)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 992
    goto :goto_3b

    .line 993
    :cond_1d
    const-string p1, "KEY_SATELLITE_ENABLED does not exist."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 994
    iget-object p1, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3b

    .line 999
    :cond_2f
    iget-object p2, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Landroid/telephony/satellite/SatelliteManager$2$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1002
    :goto_3b
    return-void
.end method
