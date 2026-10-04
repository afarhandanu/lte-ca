.class Landroid/telephony/TelephonyManager$7;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->requestUiccIari(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
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

    .line 8770
    iput-object p3, p0, Landroid/telephony/TelephonyManager$7;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$7;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Ljava/lang/Throwable;)V
    .registers 2

    .line 8779
    check-cast p1, Ljava/lang/Exception;

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Ljava/lang/Throwable;)V
    .registers 5

    .line 8781
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestUiccIari : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8782
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8781
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V
    .registers 2

    .line 8788
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 8773
    const-string/jumbo p1, "uicc_iari_exception"

    const-class v0, Landroid/os/ParcelableException;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelableException;

    .line 8775
    if-eqz p1, :cond_38

    .line 8776
    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 8777
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_2b

    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_2b

    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p2, :cond_1e

    goto :goto_2b

    .line 8781
    :cond_1e
    iget-object p2, p0, Landroid/telephony/TelephonyManager$7;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$7;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$7$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Landroid/telephony/TelephonyManager$7$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_37

    .line 8779
    :cond_2b
    :goto_2b
    iget-object p2, p0, Landroid/telephony/TelephonyManager$7;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$7;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Landroid/telephony/TelephonyManager$7$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8784
    :goto_37
    goto :goto_6f

    .line 8785
    :cond_38
    const-string/jumbo p1, "uicc_iari_list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 8786
    new-instance p2, Ljava/util/HashSet;

    if-eqz p1, :cond_47

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_4a

    :cond_47
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 8787
    :goto_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestUiccIari onReceiveResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8788
    iget-object p1, p0, Landroid/telephony/TelephonyManager$7;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$7;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$7$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p2}, Landroid/telephony/TelephonyManager$7$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8790
    :goto_6f
    return-void
.end method
