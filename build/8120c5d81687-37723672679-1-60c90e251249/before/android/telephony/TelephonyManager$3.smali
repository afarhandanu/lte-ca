.class Landroid/telephony/TelephonyManager$3;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 5077
    iput-object p3, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;I)V
    .registers 4

    .line 5081
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;)V
    .registers 4

    .line 5090
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;Landroid/os/ParcelUuid;)V
    .registers 2

    .line 5095
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 5080
    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    .line 5081
    iget-object p2, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5083
    return-void

    .line 5085
    :cond_10
    const-class p1, Landroid/os/ParcelUuid;

    .line 5086
    const-string v0, "call_composer_picture_handle"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 5087
    if-nez p1, :cond_30

    .line 5088
    const-string p1, "TelephonyManager"

    const-string p2, "Got null uuid without an error while uploading call composer pic"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    iget-object p1, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v0, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5093
    return-void

    .line 5095
    :cond_30
    iget-object p2, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/ParcelUuid;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5096
    return-void
.end method
